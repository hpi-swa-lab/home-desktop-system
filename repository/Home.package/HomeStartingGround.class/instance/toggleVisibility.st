visuals
toggleVisibility

	self isInWorld
		ifTrue: [self abandon]
		ifFalse: [
			self 
				updateVisuals;
				openInWorld].