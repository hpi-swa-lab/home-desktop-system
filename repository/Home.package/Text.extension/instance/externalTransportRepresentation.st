*Home-DnD
externalTransportRepresentation
	"Override from Object to just transfer the Text and not the extra state (Font, color)"
	
	^ Dictionary new
		at: self worldIconText put: (ExternalTransportRepresentation newForType:  MIMEDocument contentTypePlainText andContent: self asString readStream);
		yourself