*Home-Database
asJsonDocumentsWithDatabaseIntern: aDatabase

	(self respondsTo: #jsonWriteOn:) ifTrue: [^ self].
	(self respondsTo: #uuid) ifTrue: [
		aDatabase at: (self uuid) put: self.
		^ (HomeDBEntityConnection for: self) asJsonDocumentsWithDatabaseIntern: aDatabase].
	^ self asJsonDocumentsWithDatabase: aDatabase