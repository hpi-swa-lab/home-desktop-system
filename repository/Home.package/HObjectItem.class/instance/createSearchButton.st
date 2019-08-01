initialization
createSearchButton

	^ SimpleButtonMorph new
		target: self;
		color: self standardColor darker;
		borderColor: self standardColor muchDarker;
		borderWidth: 1;
		label: 's' font: Preferences standardButtonFont;
		actionSelector: #searchDomainObjects
	