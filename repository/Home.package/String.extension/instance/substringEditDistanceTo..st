*Home-Search
substringEditDistanceTo: aString 
	"Answers the lowest possible edit distance (with transpositions) between any of my substrings and aString. Case-insensitive.
	This is a modified version of the Damerau-Levenshtein algorithm. The changes follow the idea outlined on http://ginstrom.com/scribbles/2007/12/01/fuzzy-substring-matching-with-levenshtein-distance-in-python/"
	| rowSize currentRow previousRow secondLastRow tmp previousOtherChar min matchTable matchTableSize |
	(self isEmpty or: [aString isEmpty]) ifTrue: [
		^ self = aString
			ifTrue: [0]
			ifFalse: [self size max: aString size]].
	
	rowSize := self size + 1.
	currentRow := Array new: rowSize.
	previousRow := Array new: rowSize.
	secondLastRow := Array new: rowSize.
	
	1 to: rowSize do: [:i |
		previousRow at: i put: 0]. "initialize with 0 instead of i"
	
	matchTable := CaseInsensitiveOrder.
	matchTableSize := matchTable size.
	previousOtherChar := nil.
	1 to: aString size do: [:j | 	
		| otherChar previousThisChar |
		(otherChar := (aString basicAt: j) + 1) <= matchTableSize ifTrue: [
			otherChar := matchTable at: otherChar].
		currentRow at: 1 put: j.
		previousThisChar := nil.
		
		1 to: self size do: [:i |
			| thisChar cost withoutTranspositions withTranspositions |
			(thisChar := (self basicAt: i) + 1) <= matchTableSize ifTrue: [
				thisChar := matchTable at: thisChar].
			cost := thisChar = otherChar ifTrue: [0] ifFalse: [1].
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
	
	min := previousRow at: 1.
	2 to: rowSize do: [:i |
		min := (previousRow at: i) min: min].
	^ min