tests
testSetValueToTriggersChanged

	| wrapper |
	self factoryMethods do: [:factoryMethod | | subject |
		subject := ObjectEditorWrapperGenericSubject new
			fieldFactory: factoryMethod;
			yourself.
		subject addDependent: self.
		wrapper := subject editorContents first.
		wrapper setValueTo: #b.
		self assert: self observerNotifications notEmpty]