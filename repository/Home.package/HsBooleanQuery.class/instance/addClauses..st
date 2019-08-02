clauses
addClauses: aCollection

	aCollection do: [:each |
		self addClause: each]