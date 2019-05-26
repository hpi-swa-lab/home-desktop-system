evaluating
satisfiedBy: anObject

	^ self conditions allSatisfy: [:condition |
		condition satisfiedBy: anObject]