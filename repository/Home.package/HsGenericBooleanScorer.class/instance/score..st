querying
score: anObject

	| scores |
	scores := OrderedCollection new.
	self scoringDo: [:scorer |
		scores add: (scorer score: anObject)].
	^ scores
		ifEmpty: [0]
		ifNotEmpty: [scores sum / scores size]