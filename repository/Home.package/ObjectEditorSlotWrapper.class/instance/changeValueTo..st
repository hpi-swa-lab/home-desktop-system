actions
changeValueTo: anObject
	
	self doInternalWrite: [self isWritable ifTrue: [ | value result |
		value := anObject.
		self beforeChange ifNotNil: [value := self beforeChange value: value].
		result := self instance perform: self setterSelector with: value.
		^ result]]