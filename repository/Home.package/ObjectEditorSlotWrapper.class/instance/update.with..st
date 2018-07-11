dependents
update: variableName with: aValue
	
	((self matchesVariableName: variableName) and: [currentlyWriting not])
		ifTrue: [self triggerEvent: #externalChange with: self]