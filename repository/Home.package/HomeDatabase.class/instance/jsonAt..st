document-api
jsonAt: aKey

	| response |
	response := self adaptor getDocument: aKey from: self dbName.
	^ STON fromString: response content