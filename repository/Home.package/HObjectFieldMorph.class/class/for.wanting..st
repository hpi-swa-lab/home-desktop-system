instance creation
for: aDomainObject wanting: aSymbol

	^ (self wanting: aSymbol)
		addDomainObjectBack: aDomainObject;
		yourself