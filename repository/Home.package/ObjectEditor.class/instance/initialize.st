initialization
initialize

	super initialize.
	
	wrappersToRows := Dictionary new.
	
	self 
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 1;
		layoutInset: 0;
		dropEnabled: true.
		
	self color: (UserInterfaceTheme current 
		userInterfaceTheme get: #color for: PluggableTextMorphPlus).
		
	self addBadge