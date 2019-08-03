querying
matches: anObject

	| searchTerms idx dist |
	value ifEmpty: [^ true].
	searchTerms := anObject searchTerms.
	idx := 1.
	dist := 0.
	searchTerms do: [:term |
		(value at: idx) = term ifTrue: []]