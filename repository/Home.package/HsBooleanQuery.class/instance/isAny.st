testing
isAny

	^ self mustNotClauses isEmpty
		and: [self mustClauses isEmpty]
		and: [self filterClauses isEmpty]