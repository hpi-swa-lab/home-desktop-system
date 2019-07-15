initialization
initialize

	super initialize.
	
	self privateTextMorph: (PluggableTextMorphPlus new
		extent: 500@10;
		setText: '';
		model: self;
		editTextSelector: #textChanged:;
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill).
	
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		dropEnabled: true;
		color: Color white;
		addMorph: self privateTextMorph