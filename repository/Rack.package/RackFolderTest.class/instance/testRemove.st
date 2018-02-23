as yet unclassified
testRemove

	testFolder addAll: {5 . 'hallo'}.
	testFolder remove: '5'.
	self assert: 1 equals: testFolder contents size.
	self assert: 'hallo' equals: testFolder / 'hallo'.
	self shouldnt: (testFolder contents includes: 5)