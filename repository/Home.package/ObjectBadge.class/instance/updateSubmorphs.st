drawing
updateSubmorphs

	| iconMorph |
	self submorphs ifNotEmpty: [self removeAllMorphs].
	
	instance ifNotNil: [ |textMorph| 
		iconMorph := self createIconMorph.
		textMorph := self createTextMorph.
		self addMorphBack: iconMorph.
		self addMorphBack: textMorph].
	
	self owner changed.