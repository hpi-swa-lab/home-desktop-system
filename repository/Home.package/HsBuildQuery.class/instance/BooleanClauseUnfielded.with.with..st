actions
BooleanClauseUnfielded: thisNode with: occurrence with: term

	^ {
		(self clauseClassFor: (self value: occurrence))
			query: (self value: term)
	}