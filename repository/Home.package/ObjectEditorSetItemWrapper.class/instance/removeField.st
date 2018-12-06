actions
removeField
	
	self refresh.
	self instance remove: previousValue ifAbsent: [].
	super removeField.