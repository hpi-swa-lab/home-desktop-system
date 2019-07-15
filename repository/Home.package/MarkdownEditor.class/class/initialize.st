class initialization
initialize
	
	super initialize.
	TheWorldMenu registerOpenCommand: {'Markdown Editor'. {self. #open}}.
	self fixTrueTypeFontState