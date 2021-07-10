*Home-UI
objectEditorRemove: anObject

	self remove: anObject ifAbsent: [].
	
	self changed.
	self triggerEvent: #objectEditorStructureChanged.