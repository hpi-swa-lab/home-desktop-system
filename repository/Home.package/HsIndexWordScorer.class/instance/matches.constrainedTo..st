matching
matches: anObject constrainedTo: fieldName

	^ (index
		postingsFor: value
		inField: fieldName
		ifAbsent: [^ false])
			at: anObject
			ifPresent: [:count | true]
			ifAbsent: [false]