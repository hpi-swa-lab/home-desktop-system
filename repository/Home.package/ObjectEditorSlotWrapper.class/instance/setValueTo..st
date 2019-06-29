actions
setValueTo: anObject

	self isWritable ifTrue: [
			Command rememberCommand: 
				(Command new cmdWording: 'change Object values';
					undoTarget: self instance selector: self setterSelector argument: (self instance perform: self getterSelector);
					redoTarget: self instance selector: self setterSelector argument: anObject).
		
		^ self instance perform: self setterSelector with: anObject]