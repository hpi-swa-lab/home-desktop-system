initialization
initialize

	"| spacing |"
	super initialize.
	
	"spacing := (TextStyle defaultFont height / 3) rounded."
	
	self label: StringMorph new.
	self field: HObjectField new.
	
	self
		color: Color transparent;
		vResizing: #shrinkFill;
		hResizing: #spaceFill;
		changeTableLayout;
		changeListDirection: #leftToRight;
		"cellInset: spacing;
		layoutInset: spacing;"
		addMorphFront: self label;
		addMorphBack: self field