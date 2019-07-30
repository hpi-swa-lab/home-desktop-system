actions
score: anObject

	^ (self matches: anObject)
		ifTrue: [1]
		ifFalse: [0]