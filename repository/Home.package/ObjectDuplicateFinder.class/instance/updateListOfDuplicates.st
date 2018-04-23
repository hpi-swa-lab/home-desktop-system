accessing
updateListOfDuplicates

	| original |
	self selectedOriginalIndex = 0 ifTrue: [^ #()].
	original := self selectedOriginal.
	duplicateCandidates := (self selectedOriginal class all select: [:c |
		(original asString levenshteinDistanceTo: c asString) < 5 ]) 
		asSet sorted: [:a :b | a asString < b asString].