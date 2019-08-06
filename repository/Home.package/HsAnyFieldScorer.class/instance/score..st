querying
score: aMatch

	| bestScore |
	bestScore := 0.
	aMatch objectFields do: [:fieldMatch |
		| score |
		(score := query score: fieldMatch) > bestScore ifTrue: [
			bestScore := score]].
	^ bestScore