drag and drop
drop: anObject ontoEntry: anEntry shouldCopy: shouldCopy

	| newName |
	anEntry item isRackFolder ifFalse: [^ self].
	
	self flag: #todo. "What about overriding stuff --pre"
	(anObject isKindOf: REntry) ifTrue: [
		anEntry value at: anObject label put: anObject item.
		^ self ].
	
	newName := UIManager default 
		request: 'Under which name should the object be stored?'
		initialAnswer: anObject worldIconText.
	
	newName isEmptyOrNil ifTrue: [newName := anObject worldIconText].
	anEntry item add: anObject named: newName asSymbol.
	
	self changed: #rootRackFolder.