querying
query: aCollection

	| collector |
	collector := HsTopScoreCollector new.
	self query: aCollection collector: collector.
	^ collector list