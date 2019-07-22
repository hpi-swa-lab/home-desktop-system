matching
matches: anObject

	^ anObject fields anySatisfy: [:field |
		self matchesField: field]