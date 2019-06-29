accessing
at: aKey put: anObject

	^ self jsonAt: aKey put: (anObject asJsonDocumentsWithDatabase: self)