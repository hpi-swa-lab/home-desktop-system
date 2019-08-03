querying
score: anObject

	| bestScore |
	bestScore := 0.
	anObject fields do: [:each |
		| score |
		(score := query score: each) > bestScore ifTrue: [
			bestScore := score]].
	^ bestScore