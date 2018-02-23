as yet unclassified
testAddAll

	testFolder addAll: {5 . 'hallo'}.
	self assert: 2 equals: testFolder contents size.
	self assert: 5 equals: testFolder / '5'.
	self assert: 'hallo' equals: testFolder / 'hallo'.