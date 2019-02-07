tests
testEquivalentSurrogatesProvideAllInformation

	self fail. "Currently the forced disambiguating in the resolving process breaks the intention of this test --pre"

	surrogate1 sameAs: surrogate2.

	self 
		assert: #A2 equals: surrogate1 messageA;
		assert: #A2 equals: surrogate2 messageA.