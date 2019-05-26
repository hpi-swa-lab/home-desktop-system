actions
NegatedCondition: thisNode with: operator with: condition

	^ self factory not: (self value: condition)