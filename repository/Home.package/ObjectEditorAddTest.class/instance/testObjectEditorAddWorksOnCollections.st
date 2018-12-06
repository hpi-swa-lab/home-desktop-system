tests
testObjectEditorAddWorksOnCollections

	self forAllImplementingClasses: [:candidateObject |
		self assert: 1 equals: candidateObject size]