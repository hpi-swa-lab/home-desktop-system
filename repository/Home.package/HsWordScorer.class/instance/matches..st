querying
matches: anObject

	^ (anObject searchTerms ifEmpty: [^ false])
		anySatisfy: [:term | self matchesTerm: term]