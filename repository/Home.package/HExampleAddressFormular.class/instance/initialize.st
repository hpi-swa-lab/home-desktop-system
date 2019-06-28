initialization
initialize

	super initialize.
	
	self attributesNeeded: #(name. street. city. postcode. email).
	
	self
		color: Color veryLightGray;
		extent: 600@200;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		changeListDirection: #topToBottom;
		cellInset: self defaultSpacing;
		layoutInset: self defaultSpacing;
		addMorph: (HOldObjectRow wants: #name labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HOldObjectRow wants: #street labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HOldObjectRow wants: #city labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HOldObjectRow wants: #postcode labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HOldObjectRow wants: #email labelMinWidth: self defaultRowLabelWidth)