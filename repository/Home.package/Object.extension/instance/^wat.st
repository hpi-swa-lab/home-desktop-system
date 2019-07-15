*Home-Core
? selector

	^ (self respondsTo: selector) ifTrue: [self perform: selector] ifFalse: [^ nil]