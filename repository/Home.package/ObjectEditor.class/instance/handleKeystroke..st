drag and drop
handleKeystroke: evt

	(evt commandKeyPressed and: evt keyCharacter == $z) ifTrue: [self commandHistory undoLastCommand].	
	(evt commandKeyPressed and: evt keyCharacter == $y) ifTrue: [self commandHistory redoNextCommand].
	^ false