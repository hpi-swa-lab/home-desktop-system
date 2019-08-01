*Home-Search
isSimilarTo: anObject

	anObject isString ifTrue: [
		^ (self asLowercase levenshteinDistanceTo: anObject asLowercase) < 5].
	^ super isSimilarTo: anObject