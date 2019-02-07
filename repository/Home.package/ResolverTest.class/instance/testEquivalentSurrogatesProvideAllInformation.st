tests
testEquivalentSurrogatesProvideAllInformation

	surrogate1 sameAs: surrogate2.

	self 
		assert: #A2 equals: surrogate1 messageA;
		assert: #A2 equals: surrogate2 messageA.