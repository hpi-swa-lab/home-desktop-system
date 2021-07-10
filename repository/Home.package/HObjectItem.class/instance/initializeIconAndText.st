initialization
initializeIconAndText
	
	| spacing icon |
	spacing := (TextStyle defaultFont height / 5) rounded.
	icon := (self object worldIconMorph form scaledToSize: 10@10) asMorph.
	
	self
		updateDisplayedString
		setColorForObject
		changeTableLayout;
		changeListDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		extent: 100@20;
		cellInset: spacing;
		layoutInset: spacing;
		addMorphFront: icon;
		addMorphBack: self privateTextField