class membership
respondsTo: aSelector

	^ (self basicRespondsTo: aSelector) or: [self can: aSelector]