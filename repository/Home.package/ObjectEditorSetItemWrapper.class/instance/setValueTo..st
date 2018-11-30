actions
setValueTo: anObject 
	
	| result |
	self isWritable ifTrue: [
		self refresh.
		self instance remove: previousValue ifAbsent: [].
		result := self instance add: anObject.
		self instance changed.
		^ result]