matching
matchesField: aString

	^ (aString asString countSubstringsWithEditDistance: self fuzziness to: value) > 0