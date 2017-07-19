as yet unclassified
resolve: searchString

	| candidates candidate |
	candidates := self all search: searchString.
		
	candidates size = 1 ifTrue: [^ candidates first].	
		
	candidates ifEmpty: [candidates := self all].
	
	[candidate := UIManager default
				chooseFrom: {'none of the listed'} , (candidates collect: [:c | c printString])
				values: #(#none) , candidates
				title: searchString] doWhileTrue: [candidate isEmptyOrNil].
	
	candidate = #none
				ifTrue: [^ self interactivelyCreateInstanceFor: searchString]
				ifFalse: [^ candidate]

	