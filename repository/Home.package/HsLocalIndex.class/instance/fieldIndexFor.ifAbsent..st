field indices
fieldIndexFor: aSymbol ifAbsent: absenceBlock

	^ fieldIndices
		at: aSymbol
		ifAbsent: absenceBlock