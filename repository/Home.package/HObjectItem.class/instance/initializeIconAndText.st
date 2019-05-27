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
		addMorphBack: (SimpleButtonMorph new
			target: self;
			color: self standardColor darker;
			borderColor: self standardColor muchDarker;
			borderWidth: 1;
			label: 'X' font: Preferences standardButtonFont;
			actionSelector: #removeMe)