printing
printOn: aStream

	aStream << ((ObjectEditor splitIdentifier: name asString) joinSeparatedBy: String space)