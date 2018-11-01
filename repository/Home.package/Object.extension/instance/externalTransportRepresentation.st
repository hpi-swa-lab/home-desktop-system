*Home-Core
externalTransportRepresentation
	"This method returns a mapping from image-unique names to streams 
	whose contents represent the object for external transfer, e.g. for email."
	
	^ Dictionary new
		at: self identityHash asString , '.storeString' put: self storeString readStream;
		yourself