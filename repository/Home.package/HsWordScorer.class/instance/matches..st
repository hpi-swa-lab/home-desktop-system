querying
matches: anObject

	^ anObject searchTerms anySatisfy: [:term | self matchesTerm: term]