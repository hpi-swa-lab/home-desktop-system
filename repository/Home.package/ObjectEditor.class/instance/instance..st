accessing
instance: anObject

	instance removeDependent: self.
	wrappersToRows keysDo: [:wrapper | instance removeDependent: wrapper].
	instance := anObject.
	instance addDependent: self.
	self refreshBadge.
	