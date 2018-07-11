tests
testObjectWrappersSetsTheFieldToNil

	| fieldAWrapper object |
	object := ObjectEditorWrapperTestObject new.
	object fieldA: #a.
	
	fieldAWrapper := object editorContents first.
	fieldAWrapper removeField.
	
	self assert: nil equals: object fieldA 