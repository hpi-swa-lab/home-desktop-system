object-interaction
getDisplayedObjectAttributeOr: anObject

	^ self object
		ifNil: [^ nil]
		ifNotNil: [self object answer: self displayedKey or: anObject]