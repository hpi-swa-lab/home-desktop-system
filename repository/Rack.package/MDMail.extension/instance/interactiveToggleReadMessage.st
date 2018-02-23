*Rack
interactiveToggleReadMessage

	<rackOperationLabel: 'toggle read status' inContextMenus: true>
	
	self hasBeenRead
		ifTrue: [self setUnread]
		ifFalse: [self setRead]