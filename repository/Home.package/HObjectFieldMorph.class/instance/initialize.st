initialization
initialize

	super initialize.
	
	self initializeTextMorph.
	
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		dropEnabled: true;
		color: Color white;
		addMorph: self privateTextMorph;
		flag: #ToDo; "TODO change to empty Character once that bug is resolved"
		wantedObjectAttributeKey: "#''" #nil;
		separator: ' '.

	self when: #textChanged send: #notifyModelAboutTextChanges to: self