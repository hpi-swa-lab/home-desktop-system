initialization
initializeButtons

	| deleteButton initializeButton |
	self buttons: (Morph new
		color: Color transparent;
		borderWidth: 0;
		changeTableLayout;
		listDirection: #leftToRight;
		width: 80;
		hResizing: #rigid;
		vResizing: #shrinkWrap;
		yourself).
	self buttons hide.
		
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