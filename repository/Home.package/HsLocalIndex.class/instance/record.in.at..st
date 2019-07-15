postings
record: anObject in: fieldIndex at: term

	(self ensurePostingsFor: term inFieldIndex: fieldIndex)
		at: anObject
		ifPresentPut: [:count | count + 1]
		ifAbsentPut: [1]