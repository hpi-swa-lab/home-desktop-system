as yet unclassified
drop: anObject ontoEntry: anEntry shouldCopy: shouldCopy

	| newName |
	anEntry item isRackFolder ifFalse: [^ self].
	
	self flag: #todo. "What about overriding stuff --pre"
	(anObject isKindOf: RBox) ifTrue: [
		anEntry value at: anObject label put: anObject item.
		^ self ].
	
	newName := UIManager default request: 'Under which name should the object be stored?'.
	
	newName isEmptyOrNil ifTrue: [newName := anObject worldIconText].
	anEntry item addEntryNamed: newName asSymbol with: anObject.
	
	self changed: #rootRackFolder.