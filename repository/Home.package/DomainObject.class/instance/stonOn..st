storing
stonOn: stonWriter

	CurrentlySerializedDomainObject value = self 
		ifTrue: [
			"TODO: this might run into an infinite loop when encountering self
			a second time, depends on STONWriters handling of this"
			stonWriter writeObject: self]
		ifFalse: [stonWriter writeObject: (DomainObjectLink new 
			uuid: self uuid;
			label: self printString;
			yourself)]