querying
matches: anObject

	^ ((anObject asString ifEmpty: [^ false])
		substringEditDistanceTo: value)
			<= fuzziness