as yet unclassified
activateRackDragAndDrop: isActivated

	RackDragAndDropIsActivated := isActivated.
	
	RackDragAndDropIsActivated
		ifTrue:  [ self doActivateDragAndDrop ]
		ifFalse: [ self doDeactivateDragAndDrop ]
		