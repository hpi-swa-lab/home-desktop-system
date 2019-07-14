drag and drop
handleKeystroke: evt

	(evt commandKeyPressed and: evt keyCharacter == $z) ifTrue: [self commandHistory undoLastCommand "undoOrRedoCommand strange behavior wenn doing undo command again->will use redo". self instance changed.].	
	^ false