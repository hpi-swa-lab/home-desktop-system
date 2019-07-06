as yet unclassified
testUuidSerialization

	| uuid |
	uuid := UUID new.
	self assert: uuid equals: (uuid asJsonDocumentsWithDatabase: self database) toObject.
	