as yet unclassified
testEditorAddOnWritableSet

	| testObject |
	testObject := Set new.
	testObject objectEditorAdd: 1.
	self assert: 1 equals: testObject size.
	