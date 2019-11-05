actions
removeField
	
	self instance isDictionary
		ifTrue: [self instance 
			removeKey: self refresh 
			ifAbsent: []]
		ifFalse: [self instance 
			remove: self refresh 
			ifAbsent: []].
	super removeField.