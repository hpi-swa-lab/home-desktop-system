*Home-UI
chooseRelationName

	| chosenRelationName relationNames |
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
	
	^ chosenRelationName