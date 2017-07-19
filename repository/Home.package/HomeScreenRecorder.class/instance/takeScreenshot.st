as yet unclassified
takeScreenshot

	HomePublicPrivateMode value: #public.
	Display writePNGfileNamed: (self screenshotFolder fullNameFor: self createFilename).
	HomePublicPrivateMode value: #private