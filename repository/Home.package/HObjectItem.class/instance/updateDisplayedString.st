as yet unclassified
updateDisplayedString

	| objectToDisplay |
	(objectToDisplay := self objectToDisplay) isString
			ifTrue: [self privateTextField removeAllMorphs.
				self privateTextField contents: objectToDisplay]
			ifFalse: [self privateTextField contents: ''.
				self privateTextField addMorph: objectToDisplay asMorph]