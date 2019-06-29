as yet unclassified
testDomainObjectSerializationWithExternObject

	| domainObject innerDomainObject constructedDomainObject |
	domainObject := DomainObject new.
	innerDomainObject := DomainObject new.
	domainObject someField: innerDomainObject.
	innerDomainObject someField: 42.
	constructedDomainObject := (domainObject asJsonDocumentsWithDatabase: self database) toObject.
	self assert: domainObject class = constructedDomainObject class.
	self assert: domainObject uuid = constructedDomainObject uuid.
	self assert: (HomeDBEntityConnection for: innerDomainObject) targetUuid = constructedDomainObject someField toObject targetUuid.
		self assert: (HomeDBEntityConnection for: innerDomainObject) targetLabel = constructedDomainObject someField toObject targetLabel.
	self assert: domainObject createdAt = constructedDomainObject createdAt.