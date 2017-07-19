accessing
printOn: aStream

	| doneLabel |
	doneLabel := self isDone ifTrue: ['done'] ifFalse: ['todo'].
	^ aStream << '(' << doneLabel << ')' << ' ' << self description.