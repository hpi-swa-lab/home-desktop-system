accessing
testOneChannelParameterConstruction

	self syncGateway channels: #('test1').
	self assert: '?channels=test1' equals: self syncGateway channelsParameter.