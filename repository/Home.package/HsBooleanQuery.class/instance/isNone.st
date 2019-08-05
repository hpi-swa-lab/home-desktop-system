testing
isNone

	^ self mustClauses isEmpty
		and: [self shouldClauses isEmpty]
		and: [self filterClauses isEmpty]