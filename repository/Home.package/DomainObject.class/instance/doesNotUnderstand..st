error handling
doesNotUnderstand: aMessage
	"delegate unknown messages to additional state or Behavior"
	
	aMessage selector isUnary "might be state access or additional a behavior call"
		ifTrue: [[^ self performUnarySelector: aMessage selector]
			on: NotFound do: [super doesNotUnderstand: aMessage]].
	(aMessage selector numArgs = 1) "setting (potentially new) additional state"
		ifTrue: [^ (HomeRelation for: aMessage selector) setValue: aMessage arguments first on: self].
	
	^ super doesNotUnderstand: aMessage.