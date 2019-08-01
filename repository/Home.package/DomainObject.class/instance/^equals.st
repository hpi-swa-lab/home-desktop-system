comparing
= anObject

	self == anObject ifTrue: [^ true].
	self class == anObject class ifFalse: [^ false].
	^ (self instVarNamed: #additionalState) = (anObject instVarNamed: #additionalState)
		and: [self createdAt = anObject createdAt
		and: [self uuid = anObject uuid]]