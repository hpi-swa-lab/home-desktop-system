event handling
mouseUp: anEvent

	anEvent yellowButtonChanged 
		ifTrue: [self openMenu]
		ifFalse: [
			super click: anEvent.
			self triggerEvent: #clicked]