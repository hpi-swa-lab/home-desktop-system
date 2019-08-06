querying
score: aMatch

	| totalScore |
	totalScore := 0.
	scorers do: [:scorer |
		| score |
		(score := scorer score: aMatch) = 0 ifTrue: [^ 0].
		totalScore := totalScore + score].
	^ totalScore / scorers size