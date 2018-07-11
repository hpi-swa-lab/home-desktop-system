tests
testEditorAddOnObjectsInGeneral

	| testObject |
	testObject := Object new.
	self should: [testObject objectEditorAdd: 1] raise: Error