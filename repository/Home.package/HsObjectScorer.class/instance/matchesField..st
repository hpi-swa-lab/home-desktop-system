matching
matchesField: anObject

	^ anObject isCollection
		ifTrue: [anObject includes: value]
		ifFalse: [value = anObject]