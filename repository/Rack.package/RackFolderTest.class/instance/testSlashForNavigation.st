as yet unclassified
testSlashForNavigation

	testFolder add: 5 named: 'testEntry'.
	self assert: 5 equals: testFolder / 'testEntry'