objectItem-getting
getInnerMorphs
	
	"text>>embeddedMorphs leads to errors with later operations that call this method (i.e. getInnerObjects)"
	
	| itemMorphs |
	itemMorphs := OrderedCollection new.
	self text runs withStartStopAndValueDo: [:start :stop :attributes | attributes
		select: [:each | each isKindOf: TextAnchor] 
		thenDo: [:each | 
			itemMorphs add: each anchoredMorph]].
	
	^ itemMorphs