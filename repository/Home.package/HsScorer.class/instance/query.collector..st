querying
query: aCollection collector: aCollector

	^ (self filter: aCollection) do: [:each |
		aCollector add: each withScore: (self score: each)]