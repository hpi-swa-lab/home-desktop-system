tests
testDictionarySerialization

	| dictionary |
	dictionary := Dictionary newFrom: {#t1 -> 'test1'. #t2 -> 'test2'}.
	self assert: dictionary equals: (dictionary asJsonDocumentsWithDatabase: self database) toObject.
	