querying
matchesTerm: anObject

	^ fuzziness = 0
		ifTrue: [	value = anObject]
		ifFalse: [(anObject asString editDistanceTo: value) <= fuzziness]