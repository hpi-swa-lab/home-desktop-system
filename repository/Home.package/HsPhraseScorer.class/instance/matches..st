querying
matches: aMatch

	| words positions availableDist |
	value ifEmpty: [^ true].
	words := aMatch objectWords.
	value size = 1 ifTrue: [^ words includes: value first]. "basically a word query?"
	positions := Dictionary new.
	1 to: words size do: [:i |
		(positions
			at: (words at: i)
			ifAbsentPut: OrderedCollection new)
				add: i].
	
	value do: [:word |
		positions at: word ifAbsent: [^ false]].
	
	availableDist := value size + fuzziness - 1.
	(positions at: value first) do: [:start |
		| remainingDist previousPosition |
		remainingDist := availableDist min: (words size - start).
		previousPosition := start.
		value allButFirstDo: [:wordToMatch |
			remainingDist > 0 ifTrue: [
				| nextPosition |
				nextPosition := (positions at: wordToMatch)
									findBinary: [:arg | (previousPosition + 1) - arg]
									ifNone: [:lower :higher | higher ifNil: [words size + 1]].
				remainingDist := remainingDist - (nextPosition - previousPosition).
				previousPosition := nextPosition]].
		remainingDist >= 0 ifTrue: [^ true]].
	^ false
			