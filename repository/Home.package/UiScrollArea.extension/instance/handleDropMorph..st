*Home-DnD
handleDropMorph: anEvent
	self widget ifNotNil: [^ self widget handleDropMorph: anEvent]. "Delegate to wrapped widget"
	super handleDropMorph: anEvent.