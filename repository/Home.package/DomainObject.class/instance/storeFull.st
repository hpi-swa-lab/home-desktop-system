storing
storeFull

	self class objectStorageFolder forceNewFileNamed: self uuid asString do: [:file | 
		CurrentlySerializedDomainObject
			value: self 
			during:[STON put: self onStream: file] ].

	self becomeForward: (DomainObjectOnDisk for: self).