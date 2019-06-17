accessing
attributeValue: selector
	"it is rather important to ask the additionalState before asking super methods to perform it. Otherwise the editor might behave weirdly. Example: #name: (goes to additional state), so #name should first look there before invoking the method"
	^ additionalState at: selector ifAbsent: [(super respondsTo: selector)
		ifTrue: [super perform: selector]
		ifFalse: [^ NotFound signal: selector]].