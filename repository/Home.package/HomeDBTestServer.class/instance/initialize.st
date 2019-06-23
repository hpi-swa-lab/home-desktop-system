as yet unclassified
initialize

	self server: (WebServer new listenOn: self port).
	self addValidJsonPersonResponse.