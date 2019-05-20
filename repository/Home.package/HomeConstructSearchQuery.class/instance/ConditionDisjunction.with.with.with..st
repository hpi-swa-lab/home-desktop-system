actions
ConditionDisjunction: thisNode with: condition with: operatorList with: moreConditions

	^ self factory or: (self conditionsFor: thisNode)