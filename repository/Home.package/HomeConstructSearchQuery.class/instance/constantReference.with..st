actions - literals
constantReference: thisNode with: aNode

	| str |
	str := thisNode interval contents.
	str = 'true' ifTrue: [^ true].
	str = 'false' ifTrue: [^ false].
	^ nil