tests
testSetWrappersShowSortedIndizes

	| testCollection wrappers |
	testCollection := Set new add: 'b'; add: 'a'; yourself.
	
	wrappers := testCollection editorContents.
	self 
		assert: '1' equals: wrappers first label;
		assert: '2' equals: wrappers second label
	