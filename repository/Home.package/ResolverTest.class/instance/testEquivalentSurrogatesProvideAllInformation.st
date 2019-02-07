tests
testEquivalentSurrogatesProvideAllInformation

	surrogate1 sameAs: surrogate2.

	self 
		assert: #(A2 A1) asSet equals: surrogate1 messageA asSet;
		assert: #(A2 A1) asSet equals: surrogate2 messageA asSet.