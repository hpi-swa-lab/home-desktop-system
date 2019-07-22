scoring
score: anObject

	| score |
	score := 0.
	index postingsFor: value do: [:postings |
		postings
			at: anObject
			ifPresent: [:count | score := score + count]
			ifAbsent: []].
	^ score