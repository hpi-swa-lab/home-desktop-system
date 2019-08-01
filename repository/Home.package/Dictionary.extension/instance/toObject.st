*Home-Database
toObject

	(self includesKey: 'sq_class') ifFalse: [^ self].
	^ (JsonObject fromAssociations: self associations) toObject