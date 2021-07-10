*Home-Search
fieldNamed: stringOrSymbol ifAbsent: absenceBlock

	(self getHiddenFieldNames includes: stringOrSymbol) ifTrue: [^ absenceBlock value].
	^ self
		getFieldNamed: stringOrSymbol
		ifAbsent: absenceBlock