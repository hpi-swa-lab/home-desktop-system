accessing
testMultipleChannelParameterConstruction

	self syncGateway channels: #('test1' 'test2' 'test3').
	self assert: '?channels=test1,test2,test3' equals: self syncGateway channelsParameter.