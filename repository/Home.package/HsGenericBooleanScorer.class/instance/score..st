querying
score: anObject

	| totalScore |
	filters do: [:scorer |
		(scorer matches: anObject) ifTrue: [^ 0]].
	mustNots do: [:scorer |
		(scorer matches: anObject) ifTrue: [^ 0]].
	(musts size + shoulds size) = 0 ifTrue: [^ 1].
	
	totalScore := 0.
	musts do: [:scorer |
		| score |
		(score := scorer score: anObject) = 0 ifTrue: [^ 0].
		totalScore := totalScore + score].
	shoulds do: [:scorer |
		totalScore := totalScore + (scorer score: anObject)].
	^ totalScore / (shoulds size + musts size)