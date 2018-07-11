event handling
startDragging: evt

	| transferMorph |
	transferMorph := RTransferMorph withPassenger: instance from: self.
	transferMorph position: evt hand positionInWorld.
	evt hand grabMorph: transferMorph