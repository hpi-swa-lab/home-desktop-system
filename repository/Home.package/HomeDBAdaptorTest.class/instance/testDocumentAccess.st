as yet unclassified
testDocumentAccess

	| resp |
	resp := self adaptor getDocument: self server existingPersonDocumentId from: self server existingDatabase.
	self assert: resp code = 200.