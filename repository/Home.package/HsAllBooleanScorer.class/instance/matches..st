querying
matches: aMatch

	^ scorers allSatisfy: [:scorer |
		scorer matches: aMatch]