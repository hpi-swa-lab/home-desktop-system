as yet unclassified
testAdd

	testFolder add: 5.
	self assert: 1 equals: testFolder contents size.
	self assert: (testFolder contents includes: 5).
	self assert: 5 equals: testFolder / '5'