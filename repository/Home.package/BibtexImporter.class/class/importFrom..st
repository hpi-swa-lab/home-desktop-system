as yet unclassified
importFrom: stream

	| parseResult |
	parseResult := OhmBibtex match: stream upToEnd startingFrom: 'BibtexDB'.
	
	parseResult failed ifTrue: [self halt].
	
	^ (OhmBibtex semanticAction: BibtexEntries new) value: parseResult	