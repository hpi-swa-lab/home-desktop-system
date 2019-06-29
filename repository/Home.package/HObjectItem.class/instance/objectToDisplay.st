as yet unclassified
objectToDisplay

	| displayedObject |
	self object ifNil: [^ ''].
	^  (displayedObject := self object
		answer: self displayedKey
		or: 'this object does not understand ', self displayedKey asString) isForm
			ifTrue: [displayedObject]
			ifFalse: [displayedObject asString]