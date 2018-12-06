*Home-UI
objectEditorAdd: anObject

	| chosenRelationName |
	chosenRelationName := self chooseRelationName.
	chosenRelationName ifNil: [^ self].
	
	(HomeRelation for: chosenRelationName) setValue: anObject on: self.
	
	self changed.
	self triggerEvent: #objectEditorStructureChanged.