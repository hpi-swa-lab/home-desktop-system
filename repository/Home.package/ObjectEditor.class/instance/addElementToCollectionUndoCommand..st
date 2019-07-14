drag and drop
addElementToCollectionUndoCommand: anObject
	
	^(Command new cmdWording: 'add to collection';
		undoTarget: self instance 
		selector: #remove: 
		argument: anObject;
		redoTarget: self instance 
		selector: #add: "maybe change to objectEditorAdd? is difference important?"
		argument: anObject).