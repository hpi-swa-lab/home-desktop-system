as yet unclassified
textToDisplay

	self object ifNil: [^ ''].
	^  (self object perform: self displayedKey) asString