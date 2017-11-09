initialize-release
initialize

	super initialize.
	self date: Date today.
	
	self content: self initialString asText.