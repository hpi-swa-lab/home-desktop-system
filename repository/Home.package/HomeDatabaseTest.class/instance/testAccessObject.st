as yet unclassified
testAccessObject

	| object |
	object := database at: self server existingPersonDocumentId.
	self assert: (object class = Person).