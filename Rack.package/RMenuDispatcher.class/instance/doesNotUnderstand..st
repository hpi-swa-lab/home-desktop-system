accessing
doesNotUnderstand: aMessage

	^ (self object respondsTo: aMessage selector)
		ifTrue: [aMessage sendTo: self object ]
		ifFalse: [super doesNotUnderstand: aMessage]