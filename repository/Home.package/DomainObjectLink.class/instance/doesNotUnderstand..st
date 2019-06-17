error handling
doesNotUnderstand: aMessage

	| newInstance |
	newInstance := self tryToResolveObject.
	newInstance ~~ self 
		ifTrue: [self becomeForward: newInstance.
				^ aMessage sendTo: newInstance]
		ifFalse: [
			self notify: 'Could not resolve the linked object'.
			^ nil]
	