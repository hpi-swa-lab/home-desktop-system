searching
search: aCollection withIndex: anIndex

	| scorer collector configurator filteredCollection |
	scorer := self scorer.
	collector := HsTopScoreCollector new.
	configurator := HsScorerConfigurator new index: anIndex yourself.
	scorer accept: configurator.
	filteredCollection := scorer filter: aCollection.
	filteredCollection do: [:each |
		collector
			add: each
			withScore: (scorer score: each)].
	^ collector list