accessing
connectWebsocket

	| url |
	url := self class websocketUrlScheme format: {self database host. self database port. self database dbName}.
	self websocket: (WebClient webSocketTo: url).
	self onChange: [:data | (data = '') ifFalse: [self loadTransactions: (STONJSON fromString: data)]].
	self websocket send: '{}'.
	self websocket fork.