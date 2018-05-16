layout
acceptDroppingMorph: aMorph event: evt

	self triggerEvent: #objectDropped with: aMorph passenger.
	self resetMouseInsideStyle