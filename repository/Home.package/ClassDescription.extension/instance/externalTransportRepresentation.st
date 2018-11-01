*Home-Core
externalTransportRepresentation

	| stream |
	stream := ReadWriteStream on: (String new: 1000).
	self fileOutOn: stream.
	stream reset.
	^ Dictionary new
		at: (self name, FileDirectory dot, FileStream st) put: stream;
		yourself