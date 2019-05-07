as yet unclassified
initializeIconAndText

	self isInRepresentationMode
		ifTrue: [self initializeIconAndTextRepresentation]
		ifFalse: [super initializeIconAndText.
			self 
				color: Color transparent;
				width: 60;
				height: 60]