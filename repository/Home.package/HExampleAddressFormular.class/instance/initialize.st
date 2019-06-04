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
		addMorph: (HObjectRow wants: #name labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HObjectRow wants: #street labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HObjectRow wants: #city labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HObjectRow wants: #postcode labelMinWidth: self defaultRowLabelWidth);
		addMorph: (HObjectRow wants: #email labelMinWidth: self defaultRowLabelWidth)