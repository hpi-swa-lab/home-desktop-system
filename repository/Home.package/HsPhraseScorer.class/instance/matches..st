querying
matches: anObject

	| searchTerms positions idx dist |
	value ifEmpty: [^ true].
	searchTerms := anObject searchTerms.
	value size = 1 ifTrue: [^ searchTerms includes: value first]. "basically a word query?"
	positions := Dictionary new.
	1 to: searchTerms size do: [:i |
		(positions
			at: (searchTerms at: i)
			ifAbsentPut: OrderedCollection new)
				add: i].
	
	idx := 1.
	dist := 0.
	searchTerms do: [:term |
		(value at: idx) = term ifTrue: []]