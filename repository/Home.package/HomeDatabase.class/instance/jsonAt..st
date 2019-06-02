accessing
jsonAt: aKey

	| response |
	response := self adaptor getDocument: aKey from: self dbName.
	^ STONJSON fromString: response content