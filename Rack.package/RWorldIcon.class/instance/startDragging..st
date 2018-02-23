dropping/grabbing
startDragging: evt

	| transferMorph |
	transferMorph := RTransferMorph withPassenger: self object from: self.
	transferMorph position: self position.
	evt hand grabMorph: transferMorph