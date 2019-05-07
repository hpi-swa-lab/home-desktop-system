as yet unclassified
initializeIconAndTextRepresentation

	| iconMorph textMorph text contrastColor |
	
	iconMorph := (self object worldIconMorph form scaledToSize: 10@10) asMorph.
	contrastColor := Color black.
	iconMorph isImageMorph ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			contrastColor alpha: c alpha])].
	
	text := self object worldIconText.
	textMorph := (text first: (100 min: text size)) asText asTextMorph.
	textMorph textColor: contrastColor.
	
	self addMorph: textMorph.
	textMorph position: self position.
	self addMorph: iconMorph.
	iconMorph position: self position + ((textMorph width)@3).
	
	self 
		color: Color gray;
		width: textMorph width + iconMorph width;
		height: textMorph height