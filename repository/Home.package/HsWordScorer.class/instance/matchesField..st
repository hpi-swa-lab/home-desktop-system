matching
matchesField: anObject

	^ anObject searchTerms anySatisfy: [:term | self matchesTerm: term]