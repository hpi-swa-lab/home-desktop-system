as yet unclassified
createFilename

	| stream |
	stream := String new writeStream.
	TimeStamp now printYMDOn: stream.
	stream 
		nextPutAll: '_';
		nextPutAll: TimeStamp now asUnixTime asString; 
		nextPutAll: '_';
		nextPutAll: Project current hash asString;
		nextPutAll: '.png'.
		
	^ stream contents