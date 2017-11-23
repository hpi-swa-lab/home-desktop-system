*Rack
openMorphOrInspectorForTransferMorph: transferMorph

	| newMorph |
	newMorph := transferMorph source owner = self
		ifTrue: [transferMorph source abandon.
				transferMorph source]
		ifFalse: [transferMorph passenger worldIcon].
	^ newMorph