querying
matches: aMatch

	^ ((aMatch objectString ifEmpty: [^ false])
		substringEditDistanceTo: value)
			<= fuzziness