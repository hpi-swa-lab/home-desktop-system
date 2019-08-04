querying
matches: anObject

	| searchTerms positions availableDist |
	value ifEmpty: [^ true].
	searchTerms := anObject searchTerms.
	value size = 1 ifTrue: [^ searchTerms includes: value first]. "basically a word query?"
	positions := Dictionary new.
	1 to: searchTerms size do: [:i |
		(positions
			at: (searchTerms at: i)
			ifAbsentPut: OrderedCollection new)
				add: i].
	
	value do: [:word |
		positions at: word ifAbsent: [^ false]].
	
	availableDist := value size + fuzziness - 1.
	(positions at: value first) do: [:start |
		| remainingDist previousPosition |
		remainingDist := availableDist min: (searchTerms size - start).
		previousPosition := start.
		value allButFirstDo: [:wordToMatch |
			remainingDist > 0 ifTrue: [
				| nextPosition |
				nextPosition := (positions at: wordToMatch)
									findBinary: [:arg | (previousPosition + 1) - arg]
									ifNone: [:lower :higher | higher ifNil: [searchTerms size + 1]].
				remainingDist := remainingDist - (nextPosition - previousPosition).
				previousPosition := nextPosition]].
		remainingDist >= 0 ifTrue: [^ true]].
	^ false
			