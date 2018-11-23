screenshots
takeScreenshot

	| success |
	HomePublicPrivateMode value: #public.
	
	success := false.
	[[Display writePNGfileNamed: (self screenshotFolder fullNameFor: self createFilename).
	success := true.]
		on: FileExistsException
		do: [:e | success := false ]] doWhileFalse: [success].
		
	HomePublicPrivateMode value: #private