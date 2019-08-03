filtering
filter: aCollection

	| matches |
	matches := (index postingsFor: value ifAbsent: [^ #()]).
	^ aCollection select: [:each |
		matches includes: each]