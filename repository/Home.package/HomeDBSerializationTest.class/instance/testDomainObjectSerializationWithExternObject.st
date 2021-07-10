tests
testDomainObjectSerializationWithExternObject

	| domainObject innerDomainObject constructedDomainObject |
	domainObject := DomainObject basicNew initialize; yourself.
	innerDomainObject := DomainObject basicNew initialize; yourself.
	domainObject someField: innerDomainObject.
	innerDomainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject equals: constructedDomainObject.
	self assert: innerDomainObject equals: constructedDomainObject someField.