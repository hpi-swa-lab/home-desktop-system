tests
testEditorAddOnWritableSequenceableCollection

	| testObject |
	testObject := OrderedCollection new.
	testObject objectEditorAdd: 1.
	self assert: 1 equals: testObject size.
	