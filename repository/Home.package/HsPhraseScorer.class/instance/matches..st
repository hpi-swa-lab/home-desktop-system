querying
matches: anObject

	^ (anObject printString countSubstringsWithEditDistance: self fuzziness to: value) > 0