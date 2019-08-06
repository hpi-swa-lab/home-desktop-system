querying
matchesWord: aString

	^ fuzziness = 0
		ifTrue: [	value = aString]
		ifFalse: [(aString editDistanceTo: value) <= fuzziness]