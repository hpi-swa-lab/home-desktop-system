querying
matches: anObject

	anObject
		fieldNamed: fieldName
		ifPresent: [:field | ^ query matches: field]
		ifAbsent: [^ false]