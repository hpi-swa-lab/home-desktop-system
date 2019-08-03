actions
setValueUndoCommand: anObject

	^ (Command new cmdWording: 'set slot values';
			undoTarget: self instance 
				selector: self setterSelector 
				argument: (self instance perform: self getterSelector);
			redoTarget: self instance 
				selector: self setterSelector 
				argument: anObject).