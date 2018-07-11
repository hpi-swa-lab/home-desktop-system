tests
testEditorAddOnWritableBag

	| testObject |
	testObject := Bag new.
	testObject objectEditorAdd: 1.
	self assert: 1 equals: testObject size.
	