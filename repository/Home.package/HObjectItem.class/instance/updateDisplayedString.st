as yet unclassified
updateDisplayedString

	| objectToDisplay |
	(objectToDisplay := self objectToDisplay) isString
			ifTrue: [self textField removeAllMorphs.
				self textField contents: objectToDisplay]
			ifFalse: [self textField contents: ''.
				self textField addMorph: objectToDisplay asMorph]