scoring
score: anObject

	^ (index
		postingsFor: value
		ifAbsent: [^ 0])
			occurrencesOf: anObject