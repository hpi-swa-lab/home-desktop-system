actions
setValueTo: anObject
	
	self isWritable ifTrue: [self instance at: index put: anObject]