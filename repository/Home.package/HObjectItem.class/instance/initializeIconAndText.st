as yet unclassified
initializeIconAndText

	"super initialize."
	
	| spacing |
	spacing := (TextStyle defaultFont height / 5) rounded.
	self textField: (TextMorph new contents: self textToDisplay).
	
	self
		changeTableLayout;
		changeListDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	
	self
		color: Color lightGray;
		extent: 100@20;
		cellInset: spacing;
		layoutInset: spacing;
		addMorph: self textField;
		addMorphBack: self closeButton.
		
	self hideOrShowCloseButton