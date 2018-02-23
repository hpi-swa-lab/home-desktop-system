initialization
initializeIconAndText

	| iconMorph textMorph |
	iconMorph := self object worldIconMorph.
	iconMorph isImageMorph ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			ActiveWorld color negated alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	textMorph := self object worldIconText asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: Color black.