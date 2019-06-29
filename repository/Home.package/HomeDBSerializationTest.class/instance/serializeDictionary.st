as yet unclassified
serializeDictionary

	| dictionary jsonDocument |
	dictionary := Dictionary newFrom: {1 -> 'test1'. 2 -> 'test2'}.
	jsonDocument := dictionary asJsonDocument.
	self assert: 1 = (jsonDocument toObject)
	