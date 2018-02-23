as yet unclassified
testSlashForNavigatingMultipleFolders

	| intermediateFolder |
	intermediateFolder := RFolder new.
	intermediateFolder add: 5 named: 'testEntry'.
	testFolder add: intermediateFolder named: 'intermediate'.
	self assert: 5 equals: testFolder / 'intermediate' / 'testEntry'