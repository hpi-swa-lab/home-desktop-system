actions
changeValueTo: anObject
	"This method changes a value and does not replace it by another one. Thus it
	tries to preserve the user interface"
	
	self doInternalWrite: [self isWritable ifTrue: [ | value result |
		value := anObject.
		self beforeChange ifNotNil: [value := self beforeChange value: value].
		result := self instance perform: self setterSelector with: value.
		^ result]]