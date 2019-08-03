actions
FieldQueryAny: thisNode with: leftBrace with: queryNode with: rightBrace

	^ HsFieldQuery
		query: (self value: queryNode)