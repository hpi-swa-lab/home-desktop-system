initialization
initialize

	| spacing |
	super initialize.
	
	spacing := (TextStyle defaultFont height / 3) rounded.
	self items: OrderedCollection new.
	
	self
		color: Color white;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		changeTableLayout;
		changeListDirection: #leftToRight;
		cellInset: spacing;
		layoutInset: spacing;
		addMorph: (self items add: (HObjectItem for: self));
		addMorphBack: (addButton := SimpleButtonMorph new
			target: self;
			color: Color gray;
			borderColor: Color gray muchDarker;
			borderWidth: 1;
			label: '+' font: Preferences standardButtonFont;
			actionSelector: #addNewObjectItem)