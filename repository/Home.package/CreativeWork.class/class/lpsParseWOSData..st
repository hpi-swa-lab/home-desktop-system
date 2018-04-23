as yet unclassified
lpsParseWOSData: aString
	
	|   inputstring  ranges snippets |
	inputstring := aString.
	ranges := (inputstring allRangesOfRegexMatches: '<td class="summary_data">') collect: [:range |
		range first to: (inputstring findString: '</td>' startingAt: range last) + 4].
	snippets := ranges collect: [:range | inputstring copyFrom: range first to: range last].
	^ (snippets collect: [:snippet | | cleanedSnippet currentNode blocks document authors collection title publicationData publicationYear publisher  | 
		cleanedSnippet := (snippet replaceStrings: {
					'xicon.png">' -> 'xicon.png"/>'.
					'_img">' -> '_img"/>'.
					'<br>' -> ''}).
		(snippet includesSubString: '"summary_data"><a')
			ifTrue: [ "WOS entries with links"
				document := XMLDOMParser parseDocumentFrom: cleanedSnippet readStream.
				blocks := document elements first elements.
				title := (blocks first firstTagNamed: #value) contentString.
				(blocks second asString includesSubstring: 'open_url')
					ifFalse: [authors := (blocks second contents first)]
					ifTrue: [authors := blocks third contents first].
				
				publicationData := blocks detect: [:b | b printString includesSubstring: 'Published:'].
				
				[currentNode := publicationData.
				[(currentNode := currentNode elements detect: [:b | b asString includesSubstring: 'Publisher'])]
					doWhileFalse: [currentNode elements size = 2].
				publisher := currentNode contentString.]
					on: NotFound
					do: [publisher := ''].
				
				collection := (publicationData elements fourth) contentString.
				publicationYear := (publicationData elements last firstTagNamed: #value) contentString asInteger asYear.]
			ifFalse: [ "Entries without corresponding WOS entries"
				document := XMLDOMParser parseDocumentFrom: cleanedSnippet readStream.
				blocks := document elementsAndContents first elements.
				blocks size = 2 ifTrue: [blocks := blocks first elements].
				
				publicationData := blocks detect: [:b | b asString includesSubstring: 'Published:'] ifNone: [nil].
				
				(snippet includesSubstring: '[not available]')
					ifTrue: ["Look further down for title"
							publicationData ifNotNil: [title := (publicationData firstTagNamed: #value) contentString asUnHtml]]
					ifFalse: [title := (blocks first firstTagNamed: #value) contentString.
							publicationData ifNotNil: [collection := publicationData contentString asUnHtml]].
				
				authors := blocks second contents first.
				
				publicationData ifNotNil: [
					[currentNode := publicationData.
					[(currentNode := currentNode elements detect: [:b | b asString includesSubstring: 'Publisher'])]
						doWhileFalse: [currentNode elements size = 2].
					publisher := currentNode contentString.]
						on: NotFound
						do: [publisher := ''].
					publicationYear := publicationData elements last elements first contentString asInteger asYear]].
			
		publicationData 
			ifNil: [nil]
			ifNotNil: [
				Dictionary newFrom: {
					#title -> title.
					#authors -> authors.
					#publisher -> publisher.
					#wosPartOf -> collection.
					#publicationDate -> publicationYear}]]) reject: #isNil