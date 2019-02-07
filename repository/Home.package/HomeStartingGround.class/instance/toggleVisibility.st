visuals
toggleVisibility

	self isInWorld
		ifTrue: [self abandon]
		ifFalse: [
			self updateVisuals.
			(self future: 2000) openInWorld].