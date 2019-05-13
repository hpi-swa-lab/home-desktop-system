*Home-Core
levenshteinDistanceTo: aString 
	
	| sourceString targetString costs |
	
	sourceString := self asLowercase.
	targetString := aString asLowercase.
	
	costs := Matrix rows: sourceString size + 1 columns: targetString size + 1 element: 0.
	
	costs atColumn: 1 put: (0 to: sourceString size).
	costs atRow: 1 put: (0 to: targetString size).
	
	targetString withIndexDo: [:targetCharacter :targetIndex |
		sourceString withIndexDo: [:sourceCharacter :sourceIndex | | cost |
			cost := targetCharacter = sourceCharacter ifTrue: [0] ifFalse: [1].
			
			costs at: sourceIndex + 1 at: targetIndex + 1 put: ({
				(costs at: sourceIndex + 1 at: targetIndex) + 1 . "deletion" 
				(costs at: sourceIndex at: targetIndex + 1) + 1 . "insertion"
				(costs at: sourceIndex at: targetIndex) + cost . "potential substitution"
			} min) ]].
	
	^ costs at: costs rowCount at: costs columnCount 
