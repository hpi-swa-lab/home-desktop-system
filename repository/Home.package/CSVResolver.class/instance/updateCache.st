private
updateCache

	| reader |
	self file ifNil: [^ false].
	self file reset.
	reader := NeoCSVReader on: self file.
	reader emptyFieldValue: ''.
	self fileHasHeaderColumn ifTrue: [
		self fieldsConfiguration notEmpty
			ifTrue: []
			ifFalse: [reader namedColumnsGuessTypesConfiguration]].
	cache := reader upToEnd.