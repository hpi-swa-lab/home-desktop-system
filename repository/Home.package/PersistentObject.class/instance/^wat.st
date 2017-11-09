as yet unclassified
? selector

	^ (self respondsTo: selector) ifTrue: [self perform: selector] ifFalse: [^ nil]