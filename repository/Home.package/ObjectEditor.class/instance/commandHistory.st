accessing
commandHistory

	commandHistory ifNotNil: [^ commandHistory].
	^ self commandHistory: CommandHistory new