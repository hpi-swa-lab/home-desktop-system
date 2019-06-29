accessing
wantedObjectAttributeKey

	self privateParentWidget ifNotNil: [self privateParentWidget wantedObjectAttributeKey].
	^ self privateWantedObjectAttributeKey