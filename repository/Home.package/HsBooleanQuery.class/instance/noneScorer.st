querying
noneScorer

	^ HsNoneBooleanScorer new
		scorers: (self mustNotClauses
					collect: [:clause | clause scorer]
					as: Array);
		yourself