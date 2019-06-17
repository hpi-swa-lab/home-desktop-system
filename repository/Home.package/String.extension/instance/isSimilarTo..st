*Home-Searching
isSimilarTo: anObject

	anObject isString ifTrue: [
		^ (self levenshteinDistanceTo: anObject) < 5].
	^ super isSimilarTo: anObject