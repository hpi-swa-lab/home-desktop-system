*Home-UI
objectEditorAdd: anObject

	| relationNames chosenRelationName |
	relationNames := ((DomainObject all gather: [:o | o additionalStateKeys]) , 
		(HomeRelation relations collect: #identifier)) asSet sorted.
	chosenRelationName := UIManager default 
		chooseFromOrAddTo: relationNames 
		lines: #() 
		title: 'Add a relation'.
	chosenRelationName ifNil: [^ self].

	(self has: chosenRelationName) ifTrue: [
		(UIManager default 
			confirm: 'Do you want to override the field ' , chosenRelationName , '?')
				ifFalse: [^ self]].
	
	(HomeRelation for: chosenRelationName) setValue: anObject on: self.
	
	self triggerEvent: #objectEditorStructureChanged.