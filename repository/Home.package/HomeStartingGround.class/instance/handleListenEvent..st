as yet unclassified
handleListenEvent: aKeyboardEvent

	"Use <ctrl-tab> under windows..."
	((aKeyboardEvent isKeyDown "isKeyUp?"
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = $0])
		ifTrue: [self toggleVisibility].