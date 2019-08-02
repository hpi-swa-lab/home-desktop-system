*Home-Core
externalTransportRepresentation

	| stream fileName |
	stream := ReadWriteStream on: (String new: 1000).
	self fileOutOn: stream.
	stream reset.
	fileName := self name, FileDirectory dot, FileStream st.
	^ Dictionary new
		at: fileName put: (ExternalTransportRepresentation newForFileName: fileName  andContent: stream);
		yourself