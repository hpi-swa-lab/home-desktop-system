searching
search: aCollection

	| scorer collector |
	scorer := self scorer.
	collector := HsTopScoreCollector new.
	(scorer filter: aCollection) do: [:each |
		collector
			add: each
			withScore: (scorer score: each)].
	^ collector list