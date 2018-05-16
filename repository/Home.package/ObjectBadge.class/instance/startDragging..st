dropping/grabbing
startDragging: evt

	| transferMorph |
	transferMorph := RTransferMorph withPassenger: self instance from: self.
	transferMorph position: (self localPointToGlobal: self topLeft).
	evt hand grabMorph: transferMorph