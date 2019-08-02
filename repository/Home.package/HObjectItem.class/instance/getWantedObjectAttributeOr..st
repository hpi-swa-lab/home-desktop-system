as yet unclassified
getWantedObjectAttributeOr: anObject

	self object ifNil: [^ ''].
	^  self object answer: self displayedKey or: anObject