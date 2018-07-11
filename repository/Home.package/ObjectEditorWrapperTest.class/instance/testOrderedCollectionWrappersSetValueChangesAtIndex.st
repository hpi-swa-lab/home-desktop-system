tests
testOrderedCollectionWrappersSetValueChangesAtIndex

	| testCollection wrappers |
	testCollection := OrderedCollection new add: 'a'; add: 'b'; yourself.
	
	wrappers := testCollection editorContents.
	wrappers first changeValueTo: 'c'.
	self 
		assert: 'c' equals: testCollection first;
		assert: 'b' equals: testCollection second
	