printing
printOn: aStream

	self longitude printOn: aStream.
	aStream nextPut: $,.
	self latitude printOn: aStream