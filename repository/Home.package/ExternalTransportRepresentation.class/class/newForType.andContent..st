instance creation
newForType: aMIMEType andContent: aStream
	^ self new
		mimetype: aMIMEType;
		contents: aStream
		