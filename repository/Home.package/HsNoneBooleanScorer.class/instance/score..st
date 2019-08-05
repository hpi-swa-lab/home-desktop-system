querying
score: anObject

	scorers do: [:scorer |
		(scorer matches: anObject) ifTrue: [^ 0]].
	^ 1