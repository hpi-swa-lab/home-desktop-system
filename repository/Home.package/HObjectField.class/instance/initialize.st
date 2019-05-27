as yet unclassified
initialize

	| spacing |
	super initialize.
	
	spacing := (TextStyle defaultFont height / 3) rounded.
	
	self
		color: Color white;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		changeListDirection: #leftToRight;
		cellInset: spacing;
		layoutInset: spacing;
		addMorph: (HObjectItem for: self);
		addMorphBack: (addButton := SimpleButtonMorph new
			target: self;
			color: Color gray;
			borderColor: Color gray muchDarker;
			borderWidth: 1;
			label: '+' font: Preferences standardButtonFont;
			actionSelector: #addNewObjectItem)
	