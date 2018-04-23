accessing
members

	^ self teams ifNotNil: [self teams gather: [:t | t members]]