adding / removing
add: anObject withScore: aScore

	aScore = 0 ifTrue: [^ self].
	self scoreBoard add: (anObject -> aScore).
	(self capacity notNil and: [self scoreBoard size > self capacity]) ifTrue: [
		self scoreBoard removeLast]