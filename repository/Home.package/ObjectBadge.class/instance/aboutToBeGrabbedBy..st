dropping/grabbing
aboutToBeGrabbedBy: aHand

	| transferMorph |
	transferMorph := RTransferMorph withPassenger: self instance from: self.
	transferMorph position: aHand position.
	transferMorph formerPosition: aHand position.
	^ transferMorph