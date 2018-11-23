*Home-UI
chooseRelationName

	| chosenRelationName relationNames |
	relationNames := (((DomainObject all gather: [:o | o additionalStateKeys]) reject: [:k | k includes: $:]) , 
		(HomeRelation relations collect: #identifier)) asSet sorted.
	chosenRelationName := UIManager default 
		chooseFromOrAddTo: relationNames 
		lines: #() 
		title: 'Add a relation'.
	chosenRelationName ifNil: [^ nil].

	(self has: chosenRelationName) ifTrue: [
		(UIManager default 
			confirm: 'Do you want to override the field ' , chosenRelationName , '?')
				ifFalse: [^ nil]].
	
	^ chosenRelationName