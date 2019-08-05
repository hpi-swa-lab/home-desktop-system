querying
allScorer

	^ HsAllBooleanScorer new
		scorers: (self mustClauses
					collect: [:clause | clause scorer]
					as: Array);
		yourself