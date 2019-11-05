initialization
initialize

	super initialize.
	self
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		cellInset: 2.
		
	self initializeButtons.