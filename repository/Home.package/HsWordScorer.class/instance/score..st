querying
score: anObject

	^ anObject searchTerms count: [:each | self matchesTerm: each]