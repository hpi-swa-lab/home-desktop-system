*Home-Behavior
respondsTo: aSelector

	^ (self basicRespondsTo: aSelector) or: [self can: aSelector]