*Home-UI
objectEditorAdd: anObject
	"This method is called when an object is interactively added to this
	object (whatever this means for the actual receiver). At the end of the
	method the implementation should call #changed and trigger the event
	objectEditorStructureChanged."

	self error: 'Cannot add anything to general objects'