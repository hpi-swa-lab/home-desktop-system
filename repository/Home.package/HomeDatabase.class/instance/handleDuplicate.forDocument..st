error-handling
handleDuplicate: aResponse forDocument: aDocument

	| oldDocument |
	oldDocument := self jsonAt: ((aDocument at: 'uuid') toUUIDString).
	aDocument at: '_rev' put: (oldDocument at: '_rev').
	self jsonAt: (aDocument at: 'uuid') asString put: aDocument.