actions
removeFieldUndoCommand
	
	^(Command new cmdWording: 'delete element';
		undoTarget: self instance 
			selector: #add:
			argument: (self refresh);
		redoTarget: self instance 
			selector: #remove:ifAbsent:
			argument: #((self refresh) []))