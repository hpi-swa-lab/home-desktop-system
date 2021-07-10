event handling
keyStroke: anEvent

	"Open the object search if command+e is pressed"
	"(command+e because command command+s is already taken)"
	(anEvent commandKeyPressed and: [anEvent keyValue = 101])
		ifTrue: [self addObjectPerSearch]