tests
testEditorAddOverwritesOnDomainObject

	| testObject |
	testObject := DomainObject new.
	testObject testField: 2.
	[testObject objectEditorAdd: 1] valueSupplyingAnswers: {
		{'Add a relation' .'testField'}.
		{'Do you want to' . true}}.
	self assert: 1 equals: testObject testField.
	