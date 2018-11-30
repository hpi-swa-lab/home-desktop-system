actions
changeValueTo: anObject
	
	self doInternalWrite: [ | value result |
		value := anObject.
		self beforeChange ifNotNil: [value := self beforeChange value: value].
		result := self instance at: index put: anObject.
		self instance changed.
		^ result]