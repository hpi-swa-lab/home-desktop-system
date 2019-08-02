field indices
ensureFieldIndexFor: aSymbol

	^ fieldIndices
		at: aSymbol
		ifAbsentPut: [Dictionary new]