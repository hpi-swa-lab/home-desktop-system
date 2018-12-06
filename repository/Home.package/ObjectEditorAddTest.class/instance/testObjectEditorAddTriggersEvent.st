tests
testObjectEditorAddTriggersEvent
	
	self forAllImplementingClasses: [:candidateObject |
		self assert: 1 equals: self recordedEvents size]
	
	