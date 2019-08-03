postings
ensurePostingsFor: term

	^ termDict
		at: term
		ifAbsentPut: [IdentityBag new]