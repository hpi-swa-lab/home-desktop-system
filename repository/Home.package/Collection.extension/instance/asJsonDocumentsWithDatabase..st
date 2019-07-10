*Home-Database
asJsonDocumentsWithDatabase: aDatabase

	^ JsonObject new
		at: 'sq_class' put: self class name;
		at: 'sq_values' put: (self collect: [:each | each asJsonDocumentsWithDatabase: aDatabase]);
		yourself