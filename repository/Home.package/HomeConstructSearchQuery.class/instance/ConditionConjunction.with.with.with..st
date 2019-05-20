actions
ConditionConjunction: thisNode with: condition with: operatorList with: moreConditions

	^ self factory and: (self conditionsFor: thisNode)