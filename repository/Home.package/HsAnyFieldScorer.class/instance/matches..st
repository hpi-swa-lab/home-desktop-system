querying
matches: aMatch

	^ aMatch objectFields anySatisfy: [:fieldMatch |
		query matches: fieldMatch]