as yet unclassified
testDomainObjectSerialization

	| domainObject constructedDomainObject |
	domainObject := DomainObject new.
	domainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject class equals: constructedDomainObject class.
	self assert: domainObject uuid equals: constructedDomainObject uuid.
	self assert: domainObject someField equals: constructedDomainObject someField.
	self assert: domainObject createdAt equals: constructedDomainObject createdAt.