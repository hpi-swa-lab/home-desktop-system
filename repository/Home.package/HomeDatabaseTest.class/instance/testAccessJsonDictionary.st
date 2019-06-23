as yet unclassified
testAccessJsonDictionary

	| object |
	object := database jsonAt: self server existingPersonDocumentId.
	self assert: (object class = Dictionary).
	self assert: (object = (STONJSON fromString: self server validJsonPersonResponse))