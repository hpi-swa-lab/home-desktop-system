as yet unclassified
for: aDomainObject wanting: aSymbol

	^ self new
		wantedObjectAttributeKey: aSymbol;
		addDomainObjectBack: aDomainObject;
		yourself