system primitives
doesNotUnderstand: aMessage

	| newInstance |
	newInstance := self readObject.
	self becomeForward: newInstance.
	^ aMessage sendTo: newInstance