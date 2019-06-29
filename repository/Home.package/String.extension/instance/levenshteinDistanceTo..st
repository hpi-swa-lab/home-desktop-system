*Home-Core
levenshteinDistanceTo: aString 

	| previousRow currentRow rowSize |
	(self isEmpty or: [aString isEmpty]) ifTrue: [
		^ self = aString
			ifTrue: [0]
			ifFalse: [self size max: aString size]].
	
	rowSize := self size + 1.
	currentRow := Array new: rowSize.
	previousRow := Array new: rowSize.
	
	1 to: rowSize do: [:i |
		previousRow at: i put: i - 1].
	
	1 to: aString size do: [:j | 	
		| otherChar tmp |
		otherChar := aString at: j.
		currentRow at: 1 put: j.
		
		1 to: self size do: [:i |
			| cost |
			cost := (self at: i) = otherChar
						ifTrue: [0]
						ifFalse: [1].
			currentRow
				at: i + 1
				put: (
					((currentRow at: i) + 1 "left (deletion)"
						min: (previousRow at: i + 1) + 1) "upper left (substitution)"
						min: (previousRow at: i) + cost)]. "up (insertion)"
		
		tmp := previousRow.
		previousRow := currentRow.
		currentRow := tmp].

	^ previousRow at: rowSize