tests
testOrderedCollectionWrappersReturnValueAtIndex

	| testCollection wrappers |
	testCollection := OrderedCollection new add: 'a'; add: 'b'; yourself.
	
	wrappers := testCollection editorContents.
	self 
		assert: 'a' equals: wrappers first value;
		assert: 'b' equals: wrappers second value
	