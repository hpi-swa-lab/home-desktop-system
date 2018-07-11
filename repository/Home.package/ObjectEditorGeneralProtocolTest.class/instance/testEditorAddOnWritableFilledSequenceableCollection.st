tests
testEditorAddOnWritableFilledSequenceableCollection

	| testObject |
	testObject := OrderedCollection new add: 2; yourself.
	testObject objectEditorAdd: 1.
	self 
		assert: 2 equals: testObject size;
		assert: 1 equals: testObject last	