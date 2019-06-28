initialization
initialize

	self
		displayedKey: #email;
		privateIsClosable: true;
		searchButton:  (SimpleButtonMorph new
			target: self;
			color: self standardColor darker;
			borderColor: self standardColor muchDarker;
			borderWidth: 1;
			label: 's' font: Preferences standardButtonFont;
			actionSelector: #searchDomainObjects);
		closeButton: (SimpleButtonMorph new
			target: self;
			color: self standardColor darker;
			borderColor: self standardColor muchDarker;
			borderWidth: 1;
			label: 'X' font: Preferences standardButtonFont;
			actionSelector: #removeMe).

	super initialize
	
	