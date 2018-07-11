actions
changeValueTo: anObject
	
	self doInternalWrite: [ | value |
		value := anObject.
		self beforeChange ifNotNil: [value := self beforeChange value: value].
		^ self instance at: index put: anObject]