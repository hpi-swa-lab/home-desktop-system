document-api
at: aKey put: anObject

	^ self jsonAt: aKey put: (anObject asJsonDocumentsWithDatabase: self)