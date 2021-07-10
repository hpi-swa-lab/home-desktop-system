drag and drop
acceptDroppingMorph: aMorph event: evt

	| droppedObject |
	droppedObject := (aMorph respondsTo: #passenger)
		ifTrue: [aMorph passenger]
		ifFalse: [aMorph object].

	(self instance isKindOf: Collection) ifTrue: [
		 	self commandHistory rememberCommand: (self addToCollectionUndoCommand: droppedObject).
			self instance objectEditorAdd: droppedObject]
		ifFalse: [
			instance objectEditorAdd: droppedObject].
	
	aMorph rejectDropMorphEvent: evt.
	self badge resetBorder.