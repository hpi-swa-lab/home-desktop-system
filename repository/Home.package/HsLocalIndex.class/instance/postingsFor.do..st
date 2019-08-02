postings
postingsFor: term do: aBlock

	self fieldIndices do: [:fieldIndex |
		fieldIndex at: term ifPresent: [:postings |
			aBlock value: postings]]