scoring
scoreField: anObject

	^ anObject searchTerms count: [:each | self matchesTerm: each]