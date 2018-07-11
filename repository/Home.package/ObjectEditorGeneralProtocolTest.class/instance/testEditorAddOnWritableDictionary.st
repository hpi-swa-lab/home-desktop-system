tests
testEditorAddOnWritableDictionary

	| testObject |
	testObject := Dictionary new.
	[testObject objectEditorAdd: 1] valueSupplyingAnswer: 'testKey'.
	self assert: 1 equals: (testObject at: #testKey).
	
	[testObject objectEditorAdd: #ten] valueSupplyingAnswer: 10.
	self assert: #ten equals: (testObject at: 10).