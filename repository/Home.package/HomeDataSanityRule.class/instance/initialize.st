initialize-release
initialize

	super initialize.
	self 
		description: 'unknown rule';
		constraint: [:w | true]