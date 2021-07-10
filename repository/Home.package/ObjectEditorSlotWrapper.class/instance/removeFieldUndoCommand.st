actions
removeFieldUndoCommand
	
	^(Command new cmdWording: 'delete field';
		undoTarget: self instance 
			selector: self setterSelector 
			argument: (self instance perform: self getterSelector);
		redoTarget: self instance 
			selector: self setterSelector
			argument: nil)