accessing
instance: anObject

	instance removeDependent: self.
	instance removeActionsWithReceiver: self.
	wrappersToRows keysDo: [:wrapper | instance removeDependent: wrapper].
	instance := anObject.
	instance addDependent: self.
	instance when: #objectEditorStructureChanged send: #renewFields to: self.
 	self refreshBadge.
	