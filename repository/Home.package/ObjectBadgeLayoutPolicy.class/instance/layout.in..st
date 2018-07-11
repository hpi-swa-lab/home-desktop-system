as yet unclassified
layout: aBadge in: newBounds

	| text xPosition usedUpWidth alreadyUsedHeight |
	xPosition := newBounds left.
	usedUpWidth := 0.
	alreadyUsedHeight := 0.
	aBadge submorphs size = 2 ifTrue: [ | icon |
		icon := aBadge submorphs first.
		icon topLeft: newBounds topLeft.
		usedUpWidth := icon width.
		alreadyUsedHeight := icon height.
		xPosition := xPosition + usedUpWidth + aBadge cellInset].
	
	text := 	aBadge submorphs second.
	text topLeft: xPosition @ newBounds top.
	text width: (newBounds width - usedUpWidth) - aBadge cellInset.
	text fullBounds.
	
	aBadge height: (((text top - newBounds top) + text height) max: alreadyUsedHeight).
	
	"Correct the text position to be vertically centered with the icon --pre"
	aBadge submorphs size = 2 ifTrue: [ | icon | 
		icon := aBadge submorphs first.
		icon height > text height ifTrue: [
			text top: text top + ((icon height - text height) / 2).]].
	

