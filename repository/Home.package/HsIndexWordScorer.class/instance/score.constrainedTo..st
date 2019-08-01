scoring
score: anObject constrainedTo: fieldName

	^ (index
		postingsFor: value
		inField: fieldName
		ifAbsent: [^ 0])
			at: anObject
			ifAbsent: [0]