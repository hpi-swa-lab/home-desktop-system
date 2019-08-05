querying
matches: anObject

	^ scorers anySatisfy: [:scorer |
		scorer matches: anObject]