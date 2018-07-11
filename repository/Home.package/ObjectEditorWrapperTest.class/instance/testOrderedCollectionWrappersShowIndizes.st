tests
testOrderedCollectionWrappersShowIndizes

	| testCollection wrappers |
	testCollection := OrderedCollection new add: 'a'; add: 'b'; yourself.
	
	wrappers := testCollection editorContents.
	self 
		assert: '1' equals: wrappers first label;
		assert: '2' equals: wrappers second label
	