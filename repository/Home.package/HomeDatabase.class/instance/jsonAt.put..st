accessing
jsonAt: aKey put: aDocument

	| response |
	response := self adaptor put: aDocument at: self dbName as: aKey.
	self handleResponse: response forDocument: aDocument.