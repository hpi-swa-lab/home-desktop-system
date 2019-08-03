actions
FieldQuerySingle: thisNode with: fieldNode with: leftBrace with: queryNode with: rightBrace

	^ HsFieldQuery
		fieldName: (self value: fieldNode)
		query: (self value: queryNode)