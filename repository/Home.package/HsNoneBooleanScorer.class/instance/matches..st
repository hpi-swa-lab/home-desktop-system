querying
matches: anObject

	^ scorers noneSatisfy: [:scorer |
		scorer matches: anObject]