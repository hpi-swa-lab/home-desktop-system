actions
removeField
	
	self instance 
		remove: self refresh 
		ifAbsent: [].
	super removeField.