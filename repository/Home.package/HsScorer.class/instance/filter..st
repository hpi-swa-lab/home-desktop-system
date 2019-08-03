querying
filter: aCollection

	^ aCollection select: [:each |
		self matches: each]