tests
testEmptyChannelParameterConstruction

	self syncGateway channels: nil.
	self assert: '' equals: self syncGateway channelsParameter.