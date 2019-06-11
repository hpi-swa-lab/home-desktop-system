storing
stonOn: stonWriter

	CurrentlySerializedDomainObject value = self 
		ifTrue: [stonWriter writeObject: self]
		ifFalse: [stonWriter writeObject: (DomainObjectLink new 
			uuid: self uuid;
			label: self printString;
			yourself)]