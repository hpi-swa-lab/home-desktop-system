initialize-release
initialize

	self server: (WebServer new listenOn: self port).
	self addValidJsonPersonResponse.