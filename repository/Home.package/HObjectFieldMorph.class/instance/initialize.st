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
		vResizing: #spaceFill;
		wantsFrameAdornments: false).
		
	self flag: #todo. "better key handling"
	self privateTextMorph textMorph on: #keyStroke send: #keyStroke: to: self.
	
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		dropEnabled: true;
		color: Color white;
		addMorph: self privateTextMorph;
		"ToDo change when fixed"
		wantedObjectAttributeKey: "#''" #nil