as yet unclassified
lpsStoreWOSData: aCollectionOfDictionaries from: sourceWork

	| newWorks |

	newWorks := aCollectionOfDictionaries collect: [:dict | | newWork |
		newWork := CreativeWork 
					resolve: (dict at: #title) 
					createBasedOn: (dict at: #title)
					automaticAccept: true.
		(newWork ?? #tags) isEmpty ifTrue: [
			dict keysAndValuesDo: [:key :value |
				newWork perform: (key , ':') asSymbol with: value]].
		newWork tags: (newWork ?? #tags) , {'live programming study'}.
		newWork liveprogstudyOrigins: (newWork ?? #liveprogstudyOrigins) , (sourceWork liveprogstudyOriginKeywords collect: [:keyword | {#hull . keyword}]).
		newWork].
	
	sourceWork wosReferences: newWorks.
	(TheRack / #'Live Programming Systems Survey' / #'literature inbox') addAll: newWorks.