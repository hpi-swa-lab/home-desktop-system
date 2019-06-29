as yet unclassified
testDomainObjectSerialization

	| domainObject constructedDomainObject |
	domainObject := DomainObject new.
	domainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject class = constructedDomainObject class.
	self assert: domainObject uuid = constructedDomainObject uuid.
	self assert: domainObject someField = constructedDomainObject someField.
	self assert: domainObject createdAt = constructedDomainObject createdAt.