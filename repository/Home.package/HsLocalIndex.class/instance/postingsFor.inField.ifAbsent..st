postings
postingsFor: term inField: field ifAbsent: absenceBlock

	^ (self fieldIndexFor: field ifAbsent: [^ absenceBlock value])
		at: term
		ifAbsent: absenceBlock