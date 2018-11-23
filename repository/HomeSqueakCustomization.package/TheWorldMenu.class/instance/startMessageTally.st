commands
startMessageTally
	| world |
	world := Project current world.
	(self confirm: 'MessageTally will start now,
and stop when the cursor goes
to the top of the screen') ifTrue:
		[MessageTally spyOn:
			[[Sensor peekPosition y > 0] whileTrue: [world doOneCycle]]]