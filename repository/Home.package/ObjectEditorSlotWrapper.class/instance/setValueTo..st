actions
setValueTo: anObject
	
	self isWritable ifTrue: [
		^ self instance perform: self setterSelector with: anObject]