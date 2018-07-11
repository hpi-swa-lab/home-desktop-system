tests
testEditorAddOverwritesOnDomainObject

	| testObject |
	testObject := DomainObject new.
	testObject testField: 2.
	[testObject objectEditorAdd: 1] valueSupplyingAnswer: 'testField'.
	self assert: 1 equals: testObject testField.
	