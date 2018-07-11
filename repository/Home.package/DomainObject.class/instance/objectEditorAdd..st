*Home-UI
objectEditorAdd: anObject

	| relations chosenRelation |
	relations := ((DomainObject all gather: [:o | o additionalStateKeys]) , (HomeRelation relations collect: #identifier)) asSet sorted.
	chosenRelation := (UIManager default chooseFrom: relations values: relations).
	chosenRelation ifNil: [^ self].

	(self has: chosenRelation) ifTrue: [
		(UIManager default confirm: 'Do you want to override the field ' , chosenRelation asString , '?')
			ifFalse: [^ self]].
	
	(HomeRelation for: chosenRelation) setValue: anObject on: self.