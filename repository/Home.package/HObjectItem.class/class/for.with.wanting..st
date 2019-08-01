as yet unclassified
for: aParentWidget with: anObject wanting: aSymbol

	^ (self for: aParentWidget)
		object: anObject;
		displayedKey: aSymbol;
		wantedObjectAttributeKey: aSymbol