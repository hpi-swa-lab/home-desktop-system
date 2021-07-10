layout
acceptDroppingMorph: aMorph event: evt

	| droppedObject |
	droppedObject := aMorph passenger.
	droppedObject isDomainObject ifTrue: [self addDomainObjectBack: droppedObject]