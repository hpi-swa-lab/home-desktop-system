accessing
instance: anObject

	instance ifNotNil: [instance removeDependent: self].
	instance := anObject.
	instance addDependent: self.
	self updateSubmorphs.