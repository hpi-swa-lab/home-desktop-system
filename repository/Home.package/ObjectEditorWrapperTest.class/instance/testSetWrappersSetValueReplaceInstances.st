tests
testSetWrappersSetValueReplaceInstances

	| testCollection wrappers |
	testCollection := Set new add: #b; add: #a; yourself.
	
	wrappers := testCollection editorContents.
	wrappers first setValueTo: #c.
	self
		assert: (testCollection includes: #b);
		assert: (testCollection includes: #c);
		assert: (testCollection includes: #a) not