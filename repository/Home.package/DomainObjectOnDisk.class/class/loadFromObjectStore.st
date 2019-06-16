utility
loadFromObjectStore

	UIManager default 
		confirm: 'Do you really want to load all objects? 
This is only intended for loading objects into an empty image.'
		orCancel: [^ true].
		
	DomainObject objectStorageFolder entriesDo: [:entry |
		entry readStreamDo: [:file |
			(self new setUuid: (UUID fromString: file localName); yourself) readFullObject]]