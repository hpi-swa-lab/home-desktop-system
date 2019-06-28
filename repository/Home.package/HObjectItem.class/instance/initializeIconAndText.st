initialization
initializeIconAndText

	"super initialize."
	
	| spacing icon |
	spacing := (TextStyle defaultFont height / 5) rounded.
	self textField: (TextMorph new
		contents: self textToDisplay;
		lock;
		yourself).
	
	self
		changeTableLayout;
		changeListDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	
	icon := (self object worldIconMorph form scaledToSize: 10@10) asMorph.
	
	self
		color: Color lightGray;
		extent: 100@20;
		cellInset: spacing;
		layoutInset: spacing;
		addMorphFront: icon;
		addMorphBack: self textField;
		addMorphBack: self searchButton;
		addMorphBack: self closeButton.
		
	self hideOrShowCloseButton