tests
testSetWrappersReplaceInstances

	| testCollection wrappers |
	testCollection := Set new add: #b; add: #a; yourself.
	
	wrappers := testCollection editorContents.
	wrappers first changeValueTo: #c.
	self
		assert: (testCollection includes: #b);
		assert: (testCollection includes: #c);
		assert: (testCollection includes: #a) not