evaluating
satisfiedBy: anObject

	^ anObject allInstVars anySatisfy: [:var |
		var
			perform: self comparator
			withArguments: {self expected valueFor: anObject ifFail: [^ false]}]