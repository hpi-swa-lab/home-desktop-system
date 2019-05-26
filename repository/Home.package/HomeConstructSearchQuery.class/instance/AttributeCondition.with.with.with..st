actions
AttributeCondition: thisNode with: actual with: comparator with: expected

	^ self factory
		compare: (self value: expected)
		with: (self value: actual)
		using: (self value: comparator)