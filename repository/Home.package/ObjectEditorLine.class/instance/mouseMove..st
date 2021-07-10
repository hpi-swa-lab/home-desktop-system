event handling
mouseMove: evt

	| dropBounds |
	evt isDraggingEvent ifTrue: [
		dropBounds := self boundsInWorld topLeft 
			corner: self label boundsInWorld bottomRight x@self boundsInWorld bottomRight y.
		(evt trail anySatisfy: [:p | dropBounds containsPoint: p])
			ifTrue: [self setDraggingBackgroundColor]
			ifFalse: [self resetBackgroundColor]]