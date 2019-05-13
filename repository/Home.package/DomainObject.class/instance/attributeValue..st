accessing
attributeValue: selector
	^ (super respondsTo: selector)
		ifTrue: [super perform: selector]
		ifFalse: [self getAdditionalStateAt: selector].