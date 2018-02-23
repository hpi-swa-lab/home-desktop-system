as yet unclassified
testRename

	testFolder addAll: {5 . 'hallo'}.
	testFolder rename: '5' to: '3'.
	self assert: 5 equals: testFolder / '3'.