scoring
scoreField: anObject

	| count target |
	target := anObject asString.
	count := target countSubstringsWithEditDistance: self fuzziness to: value.
	^ count