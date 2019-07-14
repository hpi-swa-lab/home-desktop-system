*Home-UI
objectEditorAdd: anObject

	self add: anObject.
	
	self changed.
	self triggerEvent: #objectEditorStructureChanged.