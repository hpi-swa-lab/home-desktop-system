running
setUp

	self server: HomeDBTestServer new.
	self database: (HomeDatabase newFromName: self server existingDatabase host: self server host port: self server port).