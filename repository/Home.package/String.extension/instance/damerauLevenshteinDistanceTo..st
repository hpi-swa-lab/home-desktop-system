*Home-Core
damerauLevenshteinDistanceTo: aString 

	| rowSize currentRow previousRow secondLastRow tmp previousOtherChar |
	(self isEmpty or: [aString isEmpty]) ifTrue: [
		^ self = aString
			ifTrue: [0]
			ifFalse: [self size max: aString size]].
	
	rowSize := self size + 1.
	currentRow := Array new: rowSize.
	previousRow := Array new: rowSize.
	secondLastRow := Array new: rowSize.
	
	1 to: rowSize do: [:i |
		previousRow at: i put: i - 1].
	
	previousOtherChar := nil.
	1 to: aString size do: [:j | 	
		| otherChar previousThisChar |
		otherChar := aString at: j.
		currentRow at: 1 put: j.
		previousThisChar := nil.
		
		1 to: self size do: [:i |
			| thisChar cost withoutTranspositions withTranspositions |
			thisChar := self at: i.
			cost := thisChar = otherChar
						ifTrue: [0]
						ifFalse: [1].
			withoutTranspositions := ((currentRow at: i) + 1 "left (deletion)"
										min: (previousRow at: i + 1) + 1) "upper left (substitution)"
										min: (previousRow at: i) + cost "up (insertion)".
			withTranspositions := (thisChar = previousOtherChar and: [previousThisChar = otherChar])
									ifTrue: [withoutTranspositions min: (secondLastRow at: i - 1) + cost]
									ifFalse: [withoutTranspositions].
			currentRow at: i + 1 put: withTranspositions.
			
			previousThisChar := thisChar].
		tmp := secondLastRow.
		secondLastRow := previousRow.
		previousRow := currentRow.
		currentRow := tmp.
		previousOtherChar := otherChar].
	
	^ previousRow at: rowSize