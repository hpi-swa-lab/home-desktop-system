initialize-release
initialize

	super initialize.
	
	self
		vertical: true;
		withLayout;
		extent: self initialExtent;
		addStyles;
		withPadding.
		
	self	
		updateFields;
		initializeAddButton.
		