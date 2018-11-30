actions
setValueTo: anObject
	
	| result |
	self isWritable ifTrue: [
		result := self instance at: index put: anObject.
		self instance changed.
		^ result]