as yet unclassified
testAddAnEntry

	testFolder add: 5 named: 'testEntry'.
	self assert: 1 equals: testFolder contents size.
	self assert: (testFolder contents includes: 5)