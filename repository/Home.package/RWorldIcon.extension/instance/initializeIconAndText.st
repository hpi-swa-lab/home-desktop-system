*Home-DnD
initializeIconAndText

	| iconMorph textMorph text contrastColor |
	iconMorph := self object worldIconMorphIn: self.
	contrastColor := (ActiveWorld colorAt: self bottomLeft belowMorph: self) negated .
	(iconMorph isImageMorph and: [self object containsViewableImage not]) ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			contrastColor alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	text := self object worldIconTextIn: self.
	textMorph := (text first: (100 min: text size)) asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: contrastColor.