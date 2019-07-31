*Home-DnD
initialize
	"ExternalDropHandler initialize"

	self resetRegisteredHandlers.
	self
		"registerHandler: self defaultImageHandler;" "we have file services for images"
		defaultHandler: self defaultGenericDropHandler; 
		registerHandler: self defaultGenericDropHandler;
		registerHandler: self defaultGZipHandler;
		registerHandler: self defaultProjectHandler;
		registerHandler: self defaultPdfHandler