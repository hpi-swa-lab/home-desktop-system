initialization
initializeButtons

	| deleteButton initializeButton |
	self buttons: (Morph new
		color: Color transparent;
		borderWidth: 2;
		changeTableLayout;
		listDirection: #leftToRight;
		layoutFrame: (LayoutFrame 
							fractions:(1@0 corner: 1@1) 
							offsets: (-80@0 corner: 0@0));
		yourself).
		
	deleteButton := IconicButton new
		labelGraphic: (RIcons icons8Delete64pxIcon scaledToSize: 14@14);
		color: Color transparent;
		borderWidth: 0;
		target: self;
		actionSelector: #deleteButtonClicked;
		yourself.
	initializeButton := IconicButton new
		labelGraphic: (RIcons icons8DownloadingUpdates64pxIcon scaledToSize: 14@14);
		color: Color transparent;
		borderWidth: 0;
		target: self;
		actionSelector: #initializeButtonClicked;
		yourself.
	self buttons 
		addMorph: deleteButton;
		addMorphBack: initializeButton