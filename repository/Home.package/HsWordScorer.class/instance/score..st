querying
score: anObject

	^ anObject searchTerms
		ifEmpty: [0]
		ifNotEmpty: [:searchTerms |
			| numMatches |
			numMatches := searchTerms count: [:each | self matchesTerm: each].
			numMatches / searchTerms size]