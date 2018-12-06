initialize-release
initialize

	super initialize.
	self borrower: nil.
	self date: DateAndTime today.
	self itemDescription: ''