layout
potentiallyDisplay: anObject

	(self wantedObjectAttribute isNil not and: [(anObject respondsTo: self wantedObjectAttribute) not])
		ifTrue: [UIManager default inform: 'Does not have required attribute: ', self wantedObjectAttribute asString.
			^ self].

	self display: anObject