system primitives
doesNotUnderstand: aMessage

	| newInstance |
	newInstance := self readFullObject.
	self becomeForward: newInstance.
	^ aMessage sendTo: newInstance