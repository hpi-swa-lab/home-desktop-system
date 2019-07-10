as yet unclassified
websocketUrl
	
	 ^ self class websocketUrlScheme format: {self database host. self database port. self database dbName}, self channelsParameter.