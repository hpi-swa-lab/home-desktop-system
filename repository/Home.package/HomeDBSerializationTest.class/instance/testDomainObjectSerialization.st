as yet unclassified
testDomainObjectSerialization

	| domainObject constructedDomainObject |
	domainObject := DomainObject new.
	domainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject equals: constructedDomainObject.