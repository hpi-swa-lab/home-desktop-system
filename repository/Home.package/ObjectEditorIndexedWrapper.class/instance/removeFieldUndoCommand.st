actions
removeFieldUndoCommand
	
	^(Command new cmdWording: 'delete element';
		undoTarget: self instance 
			selector: #objectEditorAdd:
			argument: (self refresh);
		redoTarget: self instance 
			selector: #objectEditorRemove:
			argument: (self refresh))