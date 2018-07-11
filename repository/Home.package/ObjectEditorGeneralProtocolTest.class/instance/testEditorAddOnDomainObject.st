tests
testEditorAddOnDomainObject

	| testObject |
	testObject := DomainObject new.
	[testObject objectEditorAdd: 1] valueSupplyingAnswer: 'testField'.
	self assert: 1 equals: testObject testField.
	