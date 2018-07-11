actions
changeValueTo: anObject
	
	self doInternalWrite: [ 
		self refresh.
		self instance remove: previousValue ifAbsent: [].
		self instance add: anObject.
		self instance changed]