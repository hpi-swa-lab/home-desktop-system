querying
matches: anObject

	^ scorers allSatisfy: [:scorer |
		scorer matches: anObject]