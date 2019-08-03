matching
matches: anObject

	^ (index
		postingsFor: value
		ifAbsent: [^ false])
			includes: anObject