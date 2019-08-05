testing
isAll

	^ self mustNotClauses isEmpty
		and: [self shouldClauses isEmpty]
		and: [self filterClauses isEmpty]