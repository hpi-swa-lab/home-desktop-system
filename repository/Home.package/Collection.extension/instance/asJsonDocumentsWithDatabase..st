*Home-Database
asJsonDocumentsWithDatabase: aDatabase

	^ JsonObject new
		at: 'sq_class' put: self class name;
		at: 'json_values' put: (self collect: [:each | each asJsonDocumentsWithDatabaseIntern: aDatabase]);
		yourself