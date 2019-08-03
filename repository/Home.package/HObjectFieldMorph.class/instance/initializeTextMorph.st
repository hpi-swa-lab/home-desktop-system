initialization
initializeTextMorph

	self privateTextMorph: (PluggableTextMorphPlus new
		extent: 500@10;
		setText: '';
		model: self;
		editTextSelector: #textChanged:;
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		wantsFrameAdornments: false).
		
	"Forward keyEvents for special commands (i.e. the object search)"
	self privateTextMorph textMorph on: #keyStroke send: #keyStroke: to: self.