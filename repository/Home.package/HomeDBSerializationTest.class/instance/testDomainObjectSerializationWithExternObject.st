as yet unclassified
testDomainObjectSerializationWithExternObject

	| domainObject innerDomainObject constructedDomainObject |
	domainObject := DomainObject new.
	innerDomainObject := DomainObject new.
	domainObject someField: innerDomainObject.
	innerDomainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject class equals: constructedDomainObject class.
	self assert: domainObject uuid equals: constructedDomainObject uuid.
	self assert: innerDomainObject someField equals: constructedDomainObject someField someField.
	self assert: domainObject createdAt equals: constructedDomainObject createdAt.