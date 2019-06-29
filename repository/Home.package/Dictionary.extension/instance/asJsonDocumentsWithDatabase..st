*Home-Database
asJsonDocumentsWithDatabase: aDatabase

	| json |
	json := JsonObject new.
	self keysAndValuesDo: [:key :value |
		json at: key put: (value asJsonDocumentsWithDatabaseIntern: aDatabase)].
	^ json