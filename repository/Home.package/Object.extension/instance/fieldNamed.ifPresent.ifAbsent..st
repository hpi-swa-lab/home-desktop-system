*Home-Search
fieldNamed: stringOrSymbol ifPresent: oneArgBlock ifAbsent: absenceBlock

	^ oneArgBlock value: 
		(self
			fieldNamed: stringOrSymbol
			ifAbsent: [^ absenceBlock value])