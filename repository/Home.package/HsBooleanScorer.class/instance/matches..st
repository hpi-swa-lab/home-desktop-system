querying
matches: anObject

	self requiredDo: [:each |
		(each matches: anObject) ifFalse: [^ false]].
	self prohibitedDo: [:each |
		(each matches: anObject) ifTrue: [^ false]].
	^ true