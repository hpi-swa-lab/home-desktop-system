as yet unclassified
testAccessJsonDictionary

	| object |
	object := database jsonAt: self server existingPersonDocumentId.
	self assert: Dictionary equals: object class.
	self assert: (STON fromString: self server validJsonPersonResponse) equals: object