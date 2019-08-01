*Home-Search
getFieldNamed: stringOrSymbol ifAbsent: absenceBlock

	^ super
		getFieldNamed: stringOrSymbol
		ifAbsent: [
			stringOrSymbol = 'source'
				ifTrue: [self sourceString]
				ifFalse: [absenceBlock value]]