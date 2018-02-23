as yet unclassified
testCreateFolderAsShortcut

	| intermediateFolder |
	intermediateFolder := testFolder createFolder: 'intermediateFolder'.
	intermediateFolder add: 5 named: 'testEntry'.
	self assert: 5 equals: testFolder / 'intermediateFolder' / 'testEntry'