initialization
initialize

	super initialize.
	
	wrappersToRows := Dictionary new.
	
	self 
		layoutPolicy: HomeVerticalLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 7;
		layoutInset: 0.
		
	self color: (UserInterfaceTheme current userInterfaceTheme get: #color for: PluggableTextMorphPlus).
		
	self addBadge