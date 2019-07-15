tests
testAsTitleCasePreservesWhitespace

	self assert: 'This is a          Title' equals: 'this is a          title' asTitleCase