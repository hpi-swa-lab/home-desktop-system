actions
filter: aCollection

	^ aCollection select: [:each |
		self matches: each]