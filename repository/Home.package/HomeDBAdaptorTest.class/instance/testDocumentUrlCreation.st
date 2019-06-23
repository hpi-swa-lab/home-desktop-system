as yet unclassified
testDocumentUrlCreation

	| document database expected result |
	database := self server existingDatabase.
	document := self server existingPersonDocumentId.
	expected := 'http://', self server host, ':', self server port, '/', database, '/', document.
	result := self adaptor documentUrl: document database: database.
	self assert: (expected = result).
	