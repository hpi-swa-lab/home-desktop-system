matching
matchesTerm: anObject

	^ fuzziness = 0
		ifTrue: [	value = anObject]
		ifFalse: [(value damerauLevenshteinDistanceTo: anObject) <= fuzziness]