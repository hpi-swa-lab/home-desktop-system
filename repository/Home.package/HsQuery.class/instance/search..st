searching
search: aCollection

	| scorer collector filteredCollection |
	scorer := self scorer.
	collector := HsTopScoreCollector new.
	filteredCollection := scorer filter: aCollection.
	filteredCollection do: [:each |
		collector
			add: each
			withScore: (scorer score: each)].
	^ collector list