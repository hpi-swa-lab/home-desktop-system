accessing
answer: selector or: default

	^ (self respondsTo: selector) ifTrue: [self perform: selector] ifFalse: [default value]