as yet unclassified
getInnerMorphs
	
	| itemMorphs |
	itemMorphs := OrderedCollection new.
	self text runs withStartStopAndValueDo: [:start :stop :attributes | attributes
		select: [:each | each isKindOf: TextAnchor] 
		thenDo: [:each | 
			itemMorphs add: each anchoredMorph]].
	
	^ itemMorphs