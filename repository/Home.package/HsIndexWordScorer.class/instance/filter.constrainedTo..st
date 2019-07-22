filtering
filter: aCollection constrainedTo: fieldName

	| matches |
	matches :=  (index
					postingsFor: value
					inField: fieldName
					ifAbsent: [^ #()]) keys asSet.
	^ aCollection intersection: matches