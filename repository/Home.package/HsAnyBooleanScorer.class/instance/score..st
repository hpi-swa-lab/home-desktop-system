querying
score: anObject

	| totalScore |
	totalScore := 0.
	scorers do: [:scorer |
		totalScore := totalScore + (scorer score: anObject)].
	^ totalScore / scorers size