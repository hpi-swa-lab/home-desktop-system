querying
score: anObject

	anObject
		objectFieldNamed: fieldName
		ifPresent: [:fieldMatch | ^ query score: fieldMatch]
		ifAbsent: [^ 0]