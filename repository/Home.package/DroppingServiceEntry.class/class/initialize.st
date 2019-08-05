instance creation
initialize
	super initialize.
	FileServices initialize.
	MIMEDocument resetMIMEdatabase.
	ExternalDropHandler cleanUp.