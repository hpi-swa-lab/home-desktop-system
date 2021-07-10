dynamic behavior
performType: typeObject Operation: operation
	^ (operation numArgs > 1)
		ifFalse: [typeObject perform: operation withArguments: {self}]
		ifTrue: [self performType: typeObject operationWithArgs: operation].