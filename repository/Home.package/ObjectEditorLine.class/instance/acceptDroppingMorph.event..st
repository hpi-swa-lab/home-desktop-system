event handling
acceptDroppingMorph: aMorph event: evt

	self triggerEvent: #objectDropped with: aMorph passenger.
	self resetBackgroundColor