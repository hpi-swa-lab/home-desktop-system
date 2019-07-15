matching
matches: anObject constrainedTo: fieldName

	^ anObject
		fieldNamed: fieldName
		ifPresent: [:field | self matchesField: field]
		ifAbsent: [false]