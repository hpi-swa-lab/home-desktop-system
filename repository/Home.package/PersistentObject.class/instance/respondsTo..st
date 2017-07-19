as yet unclassified
respondsTo: aSelector

	^ (super respondsTo: aSelector) or: [self has: aSelector]