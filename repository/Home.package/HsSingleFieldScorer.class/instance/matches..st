querying
matches: aMatch

	aMatch
		objectFieldNamed: fieldName
		ifPresent: [:fieldMatch | ^ query matches: fieldMatch]
		ifAbsent: [^ false]