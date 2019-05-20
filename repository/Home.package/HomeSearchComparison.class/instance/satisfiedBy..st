evaluating
satisfiedBy: anObject

	^ (self actual valueFor: anObject ifFail: [^ false])
		perform: self comparator
		withArguments: {self expected valueFor: anObject ifFail: [^ false]}