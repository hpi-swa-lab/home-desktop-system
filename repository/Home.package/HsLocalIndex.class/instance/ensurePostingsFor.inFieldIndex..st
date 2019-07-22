postings
ensurePostingsFor: term inFieldIndex: fieldIndex

	^ fieldIndex at: term ifAbsentPut: [IdentityDictionary new]