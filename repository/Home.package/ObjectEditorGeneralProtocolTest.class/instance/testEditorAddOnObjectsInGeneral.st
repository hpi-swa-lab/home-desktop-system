as yet unclassified
testEditorAddOnObjectsInGeneral

	| testObject |
	testObject := Object new.
	self should: [testObject objectEditorAdd: 1] raise: Error