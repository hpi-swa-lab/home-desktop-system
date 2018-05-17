initialize-release
initialize

	super initialize.
	
	self
		vertical: true;
		withLayout;
		extent: self initialExtent;
		addStyles;
		withPadding;
		addStyleClass: #withPadding;
		addStyleClass: #objectEditor.
		
	self	
		updateFields;
		initializeAddButton.
		
	