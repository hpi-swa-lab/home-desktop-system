actions
BooleanClauseFieldedGroup: thisNode with: field with: leftParan with: occurrences with: terms with: rightParan

	| fieldName |
	fieldName := self value: field.
	^ terms children with: occurrences children collect: [:term :occurrence |
		(self clauseClassFor: (self value: occurrence))
			query: (HsFieldQuery
						fieldName: fieldName
						term: (self value: term))]