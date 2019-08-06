querying
score: aMatch

	^ aMatch objectWords
		ifEmpty: [0]
		ifNotEmpty: [:words |
			| numMatches |
			numMatches := words count: [:word | self matchesWord: word].
			numMatches / words size]