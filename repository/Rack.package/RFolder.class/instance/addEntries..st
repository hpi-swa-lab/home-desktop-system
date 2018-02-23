modifying
addEntries: aCollection

	aCollection do: [:o | self addEntryNamed: o printString with: o]