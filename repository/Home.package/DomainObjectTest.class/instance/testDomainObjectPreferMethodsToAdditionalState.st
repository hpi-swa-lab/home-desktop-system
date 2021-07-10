tests
testDomainObjectPreferMethodsToAdditionalState

	object someMethod: #a.
	self assert: object someMethod equals: #b