tests
testObjectWrappersChangesValue

	| fieldAWrapper object |
	object := ObjectEditorWrapperTestObject new.
	object fieldA: #a.
	
	fieldAWrapper := object editorContents first.
	fieldAWrapper changeValueTo: #b.
	
	self assert: #b equals: object fieldA 