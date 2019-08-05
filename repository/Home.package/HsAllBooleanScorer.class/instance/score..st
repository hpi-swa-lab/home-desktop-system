querying
score: anObject

	| totalScore |
	totalScore := 0.
	scorers do: [:scorer |
		| score |
		(score := scorer score: anObject) = 0 ifTrue: [^ 0].
		totalScore := totalScore + score].
	^ totalScore / scorers size