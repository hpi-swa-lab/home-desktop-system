matching
matches: anObject

	index postingsFor: value do: [:postings |
		postings
			at: anObject
			ifPresent: [:count | ^ true]
			ifAbsent: []].
	^ false