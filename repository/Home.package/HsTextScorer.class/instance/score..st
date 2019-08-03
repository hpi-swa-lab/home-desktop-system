querying
score: anObject

	^ anObject asString countSubstringsWithEditDistance: self fuzziness to: value