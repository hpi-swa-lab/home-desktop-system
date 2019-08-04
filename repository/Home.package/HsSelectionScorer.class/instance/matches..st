actions
matches: anObject

	[^ (method
		valueWithReceiver: anObject
		arguments: #()) == true]
		ifError: [^ false]