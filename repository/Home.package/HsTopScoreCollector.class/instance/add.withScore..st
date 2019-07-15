adding / removing
add: anObject withScore: aScore

	| worstScore |
	worstScore := self scoreBoard size = 0
					ifTrue: [-1]
					ifFalse: [self scoreBoard last value].
	aScore = 0 ifTrue: [^ self].
	self scoreBoard add: (anObject -> aScore).
	(self capacity notNil and: [self scoreBoard size > self capacity]) ifTrue: [
		self scoreBoard removeLast]