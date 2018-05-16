accessing
mouseUp: anEvent

	anEvent yellowButtonChanged
		ifTrue: [self triggerRightClicked: anEvent]
		ifFalse: [super mouseUp: anEvent]