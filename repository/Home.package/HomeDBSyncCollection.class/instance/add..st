adding
add: newObject
	
	newObject addDependent: self syncGateway.
	((newObject respondsTo: self class channelAttribute) and: [(newObject cb_channels contains: self identifier) not])
		ifTrue: [newObject cb_channels add: self identifier]
		ifFalse: [newObject cb_channels: (OrderedCollection with: self identifier)].
	self syncGateway storeObject: newObject.
	^ super add: newObject uuid
	