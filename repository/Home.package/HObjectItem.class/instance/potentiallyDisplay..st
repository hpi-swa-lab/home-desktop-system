as yet unclassified
potentiallyDisplay: anObject

	(self wantedObjectAttributeKey isNil not and: [(anObject respondsTo: self wantedObjectAttributeKey) not])
		ifTrue: [UIManager default inform: 'Does not have required attribute: ', self wantedObjectAttributeKey asString.
			^ self].

	self display: anObject