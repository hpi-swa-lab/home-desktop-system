testing
isNonEmptyFolder: anEntry

	^ anEntry item isRackFolder and: [anEntry item contents notEmpty]

	