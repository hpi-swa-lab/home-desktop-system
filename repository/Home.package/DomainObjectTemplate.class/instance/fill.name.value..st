operations
fill: do name: name value: value
	((do respondsTo: name) and: [(do perform: name) notNil])
		ifFalse: [do perform: name asMutator withArguments: {value}]