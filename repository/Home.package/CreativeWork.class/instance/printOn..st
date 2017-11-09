printing
printOn: aStream

	aStream nextPutAll: (self title ifNil: ['an untitled CreativeWork'])