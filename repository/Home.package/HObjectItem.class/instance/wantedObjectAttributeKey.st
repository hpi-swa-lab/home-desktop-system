accessing
wantedObjectAttributeKey

	(self privateParentWidget isNil not and: [self privateWantedObjectAttributeKey isNil]) ifTrue: [self privateParentWidget wantedObjectAttributeKey].
	^ self privateWantedObjectAttributeKey