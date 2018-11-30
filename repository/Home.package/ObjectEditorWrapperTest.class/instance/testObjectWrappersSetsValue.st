tests
testObjectWrappersSetsValue

	| fieldAWrapper object |
	object := ObjectEditorWrapperTestObject new.
	object fieldA: #a.
	
	fieldAWrapper := object editorContents first.
	fieldAWrapper setValueTo: #b.
	
	self assert: #b equals: object fieldA 