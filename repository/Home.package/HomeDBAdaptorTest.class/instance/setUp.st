setup
setUp

	self server: HomeDBTestServer new.
	self adaptor: (HomeDBAdaptor host: self server host port: self server port).