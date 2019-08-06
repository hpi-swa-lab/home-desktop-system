querying
matches: aMatch

	^ (aMatch objectWords ifEmpty: [^ false])
		anySatisfy: [:word | self matchesWord: word]