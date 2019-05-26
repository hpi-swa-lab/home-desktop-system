actions
comparator: thisNode with: aNode

	| str |
	str := thisNode interval contents.
	str = ':' ifTrue: [^ #isSimilarTo:].
	^ str asSymbol