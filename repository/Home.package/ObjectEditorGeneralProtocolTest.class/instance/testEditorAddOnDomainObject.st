tests
testEditorAddOnDomainObject

	| testObject |
	testObject := DomainObject basicNew initialize; yourself.
	[testObject objectEditorAdd: 1] valueSupplyingAnswer: 'testField'.
	self assert: (testObject has: #testField).
	self assert: 1 equals: testObject testField.
	