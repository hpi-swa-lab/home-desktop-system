*Home-DnD
openMorphOrInspectorForTransferMorph: transferMorph

	| newMorph |
	newMorph := (transferMorph source owner = self and:[transferMorph shouldMove])
		ifTrue: [
			transferMorph source abandon.
				transferMorph source]
		ifFalse: [transferMorph passenger dropObject].
	^ newMorph