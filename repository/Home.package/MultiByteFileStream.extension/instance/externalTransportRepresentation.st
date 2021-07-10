*Home-DnD
externalTransportRepresentation
	self reopen.
		^ Dictionary new
		at: self name put: (HomeExternalTransportRepresentation newForFileName: self name andContent: self);
		yourself