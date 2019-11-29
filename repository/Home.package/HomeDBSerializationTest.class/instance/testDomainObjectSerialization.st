tests
testDomainObjectSerialization

	| domainObject constructedDomainObject |
	domainObject := DomainObject basicNew initialize; yourself.
	domainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject equals: constructedDomainObject.