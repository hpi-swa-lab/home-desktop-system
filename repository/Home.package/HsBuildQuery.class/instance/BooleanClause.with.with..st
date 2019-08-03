actions
BooleanClause: thisNode with: occurrence with: query

	^ (self value: occurrence)
			query: (self value: query)