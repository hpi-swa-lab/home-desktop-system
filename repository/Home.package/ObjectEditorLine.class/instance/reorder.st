ui
reorder

	self removeAllMorphs.
	
	self label ifNotNil: [self addMorph: self label].
	"self addDeleteButton."
	self editingWidget ifNotNil: [self addMorphBack: self editingWidget].
	self addMorphBack: self buttons. 