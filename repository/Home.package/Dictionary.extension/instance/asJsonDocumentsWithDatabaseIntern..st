*Home-Database
asJsonDocumentsWithDatabaseIntern: aDatabase

	| json |
	json := JsonObject new.
	self keysAndValuesDo: [:key :value |
		json at: key put: (value asJsonDocumentsWithDatabaseIntern: aDatabase)].
	^ json