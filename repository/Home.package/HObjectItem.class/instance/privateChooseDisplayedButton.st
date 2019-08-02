refactor
privateChooseDisplayedButton

	^ SimpleButtonMorph new
		target: self;
		color: self standardColor darker;
		borderColor: self standardColor muchDarker;
		borderWidth: 1;
		label: 'd' font: Preferences standardButtonFont;
		actionSelector: #chooseDisplayedKey
	