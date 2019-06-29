*Home-UI
objectEditorAdd: anObject

	self add: anObject.
	Command rememberCommand: 
				(Command new cmdWording: 'change OrderedCollection';
				undoTarget: self selector: #removeLast: argument: 1;
				redoTarget: self selector: #add: argument: anObject).
	
	self changed.
	self triggerEvent: #objectEditorStructureChanged.