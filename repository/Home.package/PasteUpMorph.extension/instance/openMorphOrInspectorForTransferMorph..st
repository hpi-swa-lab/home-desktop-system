*Home-DnD
openMorphOrInspectorForTransferMorph: transferMorph

	| newMorph |
	newMorph := (transferMorph source owner = self and:[transferMorph shouldMove])
		"move the object"
		ifTrue: [
			transferMorph source abandon.
				transferMorph source]
		"work on a copy of it"
		ifFalse: [transferMorph passenger dropObjectAndOpenMenu: transferMorph shouldMove not].
	^ newMorph