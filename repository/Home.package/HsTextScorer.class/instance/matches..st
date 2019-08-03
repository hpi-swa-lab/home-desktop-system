querying
matches: anObject

	^ (anObject asString countSubstringsWithEditDistance: self fuzziness to: value) > 0