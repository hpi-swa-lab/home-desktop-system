as yet unclassified
emailAddress: anObject

	^ (anObject collect: [:o | o emailAddress]) joinSeparatedBy: ', '