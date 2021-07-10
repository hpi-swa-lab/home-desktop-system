drag and drop
handleDroppedItem: anItem event: anEvent
	| transferMorph |
	transferMorph := RTransferMorph withPassenger: anItem from: self.
	self acceptDroppingMorph: transferMorph event: anEvent. 
