*Rack
openMorphOrInspectorForTransferMorph: transferMorph

	| newMorph |
	newMorph := transferMorph passenger worldIcon.
	transferMorph passenger isMorph ifTrue: [transferMorph passenger abandon].
	^ newMorph