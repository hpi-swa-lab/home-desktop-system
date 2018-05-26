user interface
addFieldButtonClicked
	
	| fieldName relations chosenRelationIndex |
	relations := (DomainObject all gather: [:o | o additionalStateKeys]) asSet sorted.
	chosenRelationIndex := (UIManager default chooseFrom: relations).
	chosenRelationIndex = 0 ifTrue: [^ self].
	fieldName := relations at: chosenRelationIndex.
	
	(self instance has: fieldName) ifFalse: [
		(HomeRelation for: fieldName) initializeOn: self instance.
		fieldList addItem: (self widgetFor: (self instance objectEditorWrapperFor: fieldName))].
	self changed.
	
	
	
	