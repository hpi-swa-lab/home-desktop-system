*Home-Database
asJsonDocumentsWithDatabaseIntern: aDatabase
	
	(self respondsTo: #jsonWriteOn:) ifTrue: [^ self].
	(self isKindOf: DomainObject) ifTrue: [
		aDatabase at: (self uuid) put: self.
		^ (DomainObjectLink for: self) asJsonDocumentsWithDatabaseIntern: aDatabase].
	^ self asJsonDocumentsWithDatabase: aDatabase