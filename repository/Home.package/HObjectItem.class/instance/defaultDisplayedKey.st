as yet unclassified
defaultDisplayedKey

	^ self privateParentWidget
		ifNotNil: [self privateParentWidget wantedObjectAttributeKey]
		ifNil: [self initialDisplayedKey]