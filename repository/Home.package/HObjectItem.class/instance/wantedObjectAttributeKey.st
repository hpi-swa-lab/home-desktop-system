accessing
wantedObjectAttributeKey

	^ (self privateParentWidget notNil and: [self privateWantedObjectAttributeKey isNil])
		ifTrue: [self privateParentWidget wantedObjectAttributeKey]
		ifFalse: [self privateWantedObjectAttributeKey]