tests
testSetWrappersShowValuesSorted

	| testCollection wrappers |
	testCollection := Set new add: 'b'; add: 'a'; yourself.
	
	wrappers := testCollection editorContents.
	self 
		assert: 'a' equals: wrappers first value;
		assert: 'b' equals: wrappers second value
	