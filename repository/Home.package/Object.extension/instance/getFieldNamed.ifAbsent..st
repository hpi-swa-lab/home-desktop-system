*Home-Search
getFieldNamed: stringOrSymbol ifAbsent: absenceBlock

	^ self
		instVarNamed: stringOrSymbol
		ifAbsent: absenceBlock