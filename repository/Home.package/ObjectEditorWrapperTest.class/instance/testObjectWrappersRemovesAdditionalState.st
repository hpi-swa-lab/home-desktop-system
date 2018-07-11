tests
testObjectWrappersRemovesAdditionalState

	| object testFieldWrapper |
	object := (ObjectEditorWrapperTestDomainObject basicNew) initialize; yourself.
	object testField: #a.
	
	testFieldWrapper := object editorContents detect: [:w | w getterSelector = #testField].
	testFieldWrapper removeField.
	self assert: (object hasAdditionalState: #testField) not.