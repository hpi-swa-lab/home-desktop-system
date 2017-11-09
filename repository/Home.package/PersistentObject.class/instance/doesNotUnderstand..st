as yet unclassified
doesNotUnderstand: aMessage

	[^ aMessage selector isUnary
		ifTrue:  [self getAdditionalStateAt: aMessage selector]
		ifFalse: [
			(aMessage selector count: [:c | c = $:]) = 1
					ifTrue: [(HomeRelation for: aMessage selector) 
								setValue: aMessage arguments first on: self]
					ifFalse: [super doesNotUnderstand: aMessage]]]
		on: NotFound
		do: [super doesNotUnderstand: aMessage]