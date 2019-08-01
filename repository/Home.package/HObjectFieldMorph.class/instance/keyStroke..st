as yet unclassified
keyStroke: anEvent

	self flag: #todo. "maybe better hack keystroke, maybe better key combo"
	(anEvent commandKeyPressed and: [anEvent keyValue = 101])
		ifTrue: [self addObjectPerSearch]