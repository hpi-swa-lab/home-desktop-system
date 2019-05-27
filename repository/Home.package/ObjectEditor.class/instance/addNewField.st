fields
addNewField

	| relationName |
	relationName := self instance chooseRelationName.
	relationName ifNil: [^ self].
	
	(HomeRelation for: (self inputToSelector: relationName)) initializeOn: self instance.
	self instance triggerEvent: #objectEditorStructureChanged.