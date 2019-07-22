actions
BooleanClauseFielded: thisNode with: field with: occurrence with: term

	| fieldName |
	fieldName := self value: field.
	^ {
		(self clauseClassFor: (self value: occurrence))
			query: (HsFieldQuery
						fieldName: fieldName
						term: (self value: term))
	}