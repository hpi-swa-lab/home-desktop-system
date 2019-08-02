*Home-Database
instantiateFromJsonDocument: aJsonDocument

	| domainObjectLink |
	domainObjectLink := super instantiateFromJsonDocument: aJsonDocument.
	^ domainObjectLink tryToResolveObject.