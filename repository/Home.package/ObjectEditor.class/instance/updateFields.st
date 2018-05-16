user interface
updateFields

	| fieldRows |
	fieldRows := self instance editorContents collect: [:wrapper |
		self widgetFor: wrapper].
	
	fieldList := PHDescriptionList items: fieldRows.
	fieldList 
		addStyleClass: #fieldList;
		expand: false.
	
	self add: fieldList