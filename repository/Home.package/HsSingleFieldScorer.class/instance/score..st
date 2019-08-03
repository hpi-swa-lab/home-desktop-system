querying
score: anObject

	^ anObject
		fieldNamed: fieldName
		ifPresent: [:field | query score: field]
		ifAbsent: [0]