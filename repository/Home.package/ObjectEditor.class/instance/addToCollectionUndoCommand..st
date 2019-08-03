drag and drop
addToCollectionUndoCommand: anObject
	
	^(Command new cmdWording: 'add to collection';
		undoTarget: self instance 
		selector: #objectEditorRemove: 
		argument: anObject;
		redoTarget: self instance 
		selector: #objectEditorAdd:
		argument: anObject).