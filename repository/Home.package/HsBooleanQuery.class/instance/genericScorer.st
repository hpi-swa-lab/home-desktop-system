querying
genericScorer

	^ HsGenericBooleanScorer new
		filters: (self filterClauses
				collect: [:clause | clause scorer]
				as: Array);
		musts: (self mustClauses
				collect: [:clause | clause scorer]
				as: Array);
		mustNots: (self mustNotClauses
				collect: [:clause | clause scorer]
				as: Array);
		shoulds: (self shouldClauses
				collect: [:clause | clause scorer]
				as: Array);
		yourself