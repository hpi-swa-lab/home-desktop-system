instance resolution
resolve: searchString createBasedOn: aString automaticAccept: shouldAutomaticallyCreate

	| candidates candidate |
	candidates := self all search: searchString.
		
	"candidates size = 1 ifTrue: [^ candidates first].	"
	
	candidates ifEmpty: [candidates := self all].
	
	candidate := #none.
	candidates := ((candidates 
		collect: [:c | {c . c asString levenshteinDistanceTo: searchString}])
		sorted: [:c1 :c2 | c1 second < c2 second])
		collect: [:c | c first ].
	
	[candidate := UIManager default
				chooseFrom: {'none of the listed'} , (candidates collect: [:c | c printString])
				values: #(#none) , candidates
				title: aString] doWhileTrue: [candidate isEmptyOrNil].
	
	candidate = #none
				ifTrue: [shouldAutomaticallyCreate
							ifTrue: [^ self new 
										initializeForInteractiveCreate: aString;
										yourself]
							ifFalse: [^ self interactivelyCreateInstanceFor: aString]]
				ifFalse: [^ candidate]