evaluating
satisfiedBy: anObject

	^ self conditions anySatisfy: [:condition |
		condition satisfiedBy: anObject]