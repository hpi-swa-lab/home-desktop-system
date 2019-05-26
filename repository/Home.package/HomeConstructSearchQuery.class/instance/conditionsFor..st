helpers
conditionsFor: aggregationNode

	| condition moreConditions |
	condition := aggregationNode children first.
	moreConditions := aggregationNode children third children.
	^ Array
		new: (moreConditions size + 1)
		streamContents: [:stream |
			stream nextPut: (self value: condition).
			moreConditions do: [:conditionNode |
				stream nextPut: (self value: conditionNode)]].