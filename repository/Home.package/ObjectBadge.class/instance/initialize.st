initialize-release
initialize

	super initialize.

	self
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 3;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 2;
		borderWidth: 1;
		borderColor: (UserInterfaceTheme current get: #textColor for: PluggableTextMorphPlus);
		color: (UserInterfaceTheme current get: #color for: PluggableTextMorphPlus).
		
	self 
		on: #startDrag send: #startDragging: to: self.
	