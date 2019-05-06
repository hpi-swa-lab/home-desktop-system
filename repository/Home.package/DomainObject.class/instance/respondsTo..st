class membership
respondsTo: aSelector

	^ (super respondsTo: aSelector) or: [self has: aSelector]