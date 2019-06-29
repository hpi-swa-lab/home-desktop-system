as yet unclassified
testDictionarySerialization

	| dictionary |
	dictionary := Dictionary newFrom: {1 -> 'test1'. 2 -> 'test2'}.
	self assert: dictionary equals: (dictionary asJsonDocumentsWithDatabase: self database) toObject.
	