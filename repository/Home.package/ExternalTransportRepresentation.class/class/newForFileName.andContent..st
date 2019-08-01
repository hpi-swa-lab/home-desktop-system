instance creation
newForFileName: aString andContent: aStream
	^ self newForType: (MIMEDocument guessTypeFromName: aString) andContent: aStream
		