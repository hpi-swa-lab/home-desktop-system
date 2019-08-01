object-interaction
getDisplayedObjectAttributeAsStringWithDefault

	^ (self getDisplayedObjectAttributeOr: 'this object does not understand ', self displayedKey) asString