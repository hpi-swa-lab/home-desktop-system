querying
score: anObject

	| searchTerms numMatches |
	searchTerms := anObject searchTerms.
	numMatches := searchTerms count: [:each | self matchesTerm: each].
	^ numMatches / searchTerms size