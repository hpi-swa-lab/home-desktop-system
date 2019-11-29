*Home-Core
externalTransportRepresentation
	"This method returns a mapping from readable ids to ExternalTransportRepresentation objects 
	(consisting out of a mimetype and a data stream). Their contents represent the object for external 
	transfer, e.g. for email."
	
	^ Dictionary new
		at: self worldIconText put: (ExternalTransportRepresentation newForType:  MIMEDocument contentTypePlainText andContent: self storeString readStream);
		yourself