as yet unclassified
testIsEmptyAndNotEmpty

	self assert: testFolder isEmpty.
	testFolder add: 5.
	self assert: testFolder notEmpty.