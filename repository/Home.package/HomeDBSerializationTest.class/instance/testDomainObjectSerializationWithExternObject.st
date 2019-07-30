as yet unclassified
testDomainObjectSerializationWithExternObject

	| domainObject innerDomainObject constructedDomainObject |
	domainObject := DomainObject new.
	innerDomainObject := DomainObject new.
	domainObject someField: innerDomainObject.
	innerDomainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject equals: constructedDomainObject.
	self assert: innerDomainObject equals: constructedDomainObject someField.