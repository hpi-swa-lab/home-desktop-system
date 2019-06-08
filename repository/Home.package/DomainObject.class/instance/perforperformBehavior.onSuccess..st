error handling
perforperformBehavior: aMessage onSuccess: success
	"try to find a type objoperationsCallableBy:the given command"
	(self operationsCallableBy: aMessage selector) ifNotEmptyDo: [:ops | |op|
		(ops size = 1)
			ifTrue: [op := ops first]
			ifFalse: [op := UIManager default chooseFrom: ops values: ops title: 'choose action to execute'].
		op ifNotNil: [success value: (op key perform: op value withArguments: ({self} , aMessage arguments))].
	].