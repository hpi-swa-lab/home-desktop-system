querying
score: anObject

	| searchTerms numMatches |
	searchTerms := anObject searchTerms.
	searchTerms size = 0 ifTrue: [^ 0].
	numMatches := searchTerms count: [:each | self matchesTerm: each].
	^ numMatches / searchTerms size