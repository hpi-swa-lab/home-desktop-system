searching
search: aCollection

	| scorer result |
	scorer := self scorer.
	result := Array streamContents: [:stream |
				aCollection do: [:each |
					| score match |
					match := HsMatch for: each.
					score := (scorer score: match).
					score > 0 ifTrue: [
						stream nextPut: (each -> score)]]].
	result sort: [:lhs :rhs | lhs value >= rhs value].
	^ (result first: (result size min: 25)) collect: [:each | each key]