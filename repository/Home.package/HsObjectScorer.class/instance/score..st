querying
score: aMatch

	^ (self matches: aMatch)
		ifTrue: [1]
		ifFalse: [0]