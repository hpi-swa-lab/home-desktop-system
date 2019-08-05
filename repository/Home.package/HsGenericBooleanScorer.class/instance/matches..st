querying
matches: anObject

	| shouldIsRequired |
	shouldIsRequired := true.
	self requiredDo: [:each |
		shouldIsRequired := false.
		(each matches: anObject) ifFalse: [^ false]].
	self prohibitedDo: [:each |
		(each matches: anObject) ifTrue: [^ false]].
	shouldIsRequired ifTrue: [
		^ shoulds anySatisfy: [:scorer |
			scorer matches: anObject]].
	^ true