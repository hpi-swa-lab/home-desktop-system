user interface
toggleEditorFor: anObject in: aContainer
	
	aContainer hasSubmorphs 
		ifTrue: [aContainer removeAllMorphs]
		ifFalse: [aContainer add: (self class for: anObject)]