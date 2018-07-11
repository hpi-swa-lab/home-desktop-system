initialization
initialize

	super initialize.
	self
		layoutPolicy: ObjectEditorLineLayoutPolicy new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 10.
		
	self initializeButtons.