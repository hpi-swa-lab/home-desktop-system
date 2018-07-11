tests
testSetWrappersRemoveTheObject

	| testCollection wrappers |
	testCollection := Set new add: #a; add: #b; yourself.
	
	wrappers := testCollection editorContents.
	wrappers first removeField.
	self assert: 1 equals: testCollection size.
	self assert: 'b' equals: testCollection asArray first.