drag and drop
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Return the dropee to its old position, and add a reference to it at the
	cursor point."
	| bindingName externalName reference |
	(dropee isKindOf: TransferMorph)
		ifTrue: [reference := dropee passenger.
			externalName := dropee passenger className]
		ifFalse: [reference := dropee.
			externalName := dropee externalName].
	
	(reference isKindOf: CreativeWork) 
		ifTrue: [targetMorph correctSelectionWithString: '@' , reference bibTexReferenceKey.
				(dropee isKindOf: TransferMorph)
					ifFalse: [dropee rejectDropMorphEvent: evt].
				^ true].
		
	externalName := externalName isOctetString
				ifTrue: [externalName]
				ifFalse: ['a' , externalName].
	bindingName := externalName withFirstCharacterDownshifted , reference identityHash printString.
	targetMorph correctSelectionWithString: bindingName , ' '.
	(self bindingOf: bindingName)
		value: reference.
	(dropee isKindOf: TransferMorph)
		ifFalse: [dropee rejectDropMorphEvent: evt].
	^ true"success"