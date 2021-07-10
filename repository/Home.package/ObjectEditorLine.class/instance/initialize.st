initialization
initialize

	super initialize.
	self
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		layoutInset: 0;
		cellInset: 2.
		
	self initializeButtons.