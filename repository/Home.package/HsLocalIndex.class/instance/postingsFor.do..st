postings
postingsFor: term do: aBlock

	^ termDict
		at: term
		ifPresent: aBlock