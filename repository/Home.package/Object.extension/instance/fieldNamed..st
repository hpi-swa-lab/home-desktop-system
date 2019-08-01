*Home-Search
fieldNamed: stringOrSymbol

	^ self
		fieldNamed: stringOrSymbol
		ifAbsent: [NotFound signal: stringOrSymbol]