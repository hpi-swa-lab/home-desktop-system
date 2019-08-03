querying
matches: anObject

	^ anObject fields anySatisfy: [:field |
		query matches: field]