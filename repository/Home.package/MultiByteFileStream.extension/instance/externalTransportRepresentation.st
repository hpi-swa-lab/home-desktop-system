*Home-DnD
externalTransportRepresentation
	self reopen.
		^ Dictionary new
		at: self name put: (ExternalTransportRepresentation newForFileName: self name andContent: self);
		yourself