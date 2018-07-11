testing
isReadOnly

	^ self isReadable and: [self isWritable not]