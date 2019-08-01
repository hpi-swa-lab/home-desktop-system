initialization
initializeIconAndText

	"super initialize."
	
	| spacing icon |
	spacing := (TextStyle defaultFont height / 5) rounded.
	self privateTextField: (StringMorph new
		contents: self getWantedObjectAttributeWithDefaultString asString;
		yourself).
	
	self
		changeTableLayout;
		changeListDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	
	icon := (self object worldIconMorph form scaledToSize: 10@10) asMorph.
	
	self setColorForObject.
	self
		extent: 100@20;
		cellInset: spacing;
		layoutInset: spacing;
		addMorphFront: icon;
		addMorphBack: self privateTextField