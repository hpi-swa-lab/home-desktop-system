as yet unclassified
textToDisplay

	self object ifNil: [^ ''].
	^  (self object answer: self displayedKey or: 'this object does not understand ', self displayedKey asString) asString