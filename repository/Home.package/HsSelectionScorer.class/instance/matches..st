actions
matches: aMatch

	[^ (method
		valueWithReceiver: aMatch object
		arguments: #()) == true]
		ifError: [^ false]