dynamic behavior
performType: typeObject operationWithArgs: operation
	| types args |
	types := (Pragma allNamed: 'parameterTypes:' in: typeObject class method: operation) first arguments first asOrderedCollection.
	args := OrderedCollection new.
	[types isEmpty] whileFalse: [args addFirst: (self 
		resolveArgumentValue: types removeFirst
		onAbort: [^ self]
		title: 'Choose object to perform ', operation asString , ' with')].
	typeObject perform: operation withArguments: ({self} , args)