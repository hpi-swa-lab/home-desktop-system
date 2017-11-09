accessing
initialize

	super initialize.
	self 
		description: 'unknown rule';
		automaticResolutionRequested: false;
		automaticCleansingBlock: [:w | w];
		condition: [:w | false]