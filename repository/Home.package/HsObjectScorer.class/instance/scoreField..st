scoring
scoreField: anObject

	^ (self matchesField: anObject)
		ifTrue: [1]
		ifFalse: [0]