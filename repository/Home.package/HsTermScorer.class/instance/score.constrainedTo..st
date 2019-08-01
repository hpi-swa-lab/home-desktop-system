scoring
score: anObject constrainedTo: fieldName

	^ anObject
		fieldNamed: fieldName
		ifPresent: [:field | self scoreField: field]
		ifAbsent: [0]