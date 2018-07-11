tests
testOrderedCollectionWrappersRemoveField

	| testCollection wrappers newWrappers |
	testCollection := OrderedCollection new add: 'a'; add: 'b'; add: 'c'; yourself.
	
	wrappers := testCollection editorContents.
	wrappers second removeField.
	self 
		assert: 'a' equals: testCollection first;
		assert: 'c' equals: testCollection second.
		
	newWrappers := testCollection editorContents.	
	self
		assert: '1' equals: newWrappers first label;
		assert: '2' equals: newWrappers second label.