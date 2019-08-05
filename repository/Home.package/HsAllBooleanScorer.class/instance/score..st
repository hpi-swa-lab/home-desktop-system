querying
score: anObject

	| score |
	score := 0.
	scorers do: [:scorer |
		score := score + (scorer score: anObject)].
	^ score / scorers size