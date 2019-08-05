querying
anyScorer

	^ HsAnyBooleanScorer new
		scorers: (self shouldClauses
					collect: [:clause | clause scorer]
					as: Array);
		yourself