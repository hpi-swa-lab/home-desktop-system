user interface
addFieldButtonClicked
	
	| fieldName relations |
	relations := (DomainObject all gather: [:o | o additionalStateKeys]) asSet sorted.
	fieldName := relations at: (UIManager default chooseFrom: relations).
	
	(self instance has: fieldName) ifFalse: [
		self instance perform: (fieldName , ':') asSymbol withArguments: {nil}.
		fieldList addItem: (self widgetFor: (self instance objectEditorWrapperFor: fieldName))].
	self changed.
	
	
	
	