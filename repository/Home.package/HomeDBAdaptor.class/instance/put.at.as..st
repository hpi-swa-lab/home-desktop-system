api-interface
put: aDocument at: aDatabase as: aKey

	| url |
	url := self documentUrl: aKey database: aDatabase.
	^ WebClient httpPut: url content: aDocument asJsonString type: self class documentContentType