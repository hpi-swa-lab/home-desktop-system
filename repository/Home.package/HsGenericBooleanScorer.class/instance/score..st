querying
score: aMatch

	| totalScore |
	filters do: [:scorer |
		(scorer matches: aMatch) ifTrue: [^ 0]].
	mustNots do: [:scorer |
		(scorer matches: aMatch) ifTrue: [^ 0]].
	(musts size + shoulds size) = 0 ifTrue: [^ 1].
	
	totalScore := 0.
	musts do: [:scorer |
		| score |
		(score := scorer score: aMatch) = 0 ifTrue: [^ 0].
		totalScore := totalScore + score].
	shoulds do: [:scorer |
		totalScore := totalScore + (scorer score: aMatch)].
	^ totalScore / (shoulds size + musts size)