*Home-Behavior
respondsTo: aSelector

	^ (super respondsTo: aSelector) or: [self can: aSelector] or: [self has: aSelector].