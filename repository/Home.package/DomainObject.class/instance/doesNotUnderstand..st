error handling
doesNotUnderstand: aMessage

	[^ aMessage selector isUnary
		ifTrue:  [self getAdditionalStateAt: aMessage selector]
		ifFalse: [
			(aMessage selector count: [:c | c = $:]) = 1
					ifTrue: [self setAdditionalStateAt: aMessage selector allButLast put: aMessage arguments first]
					ifFalse: [super doesNotUnderstand: aMessage]]]
		on: NotFound
		do: [super doesNotUnderstand: aMessage]