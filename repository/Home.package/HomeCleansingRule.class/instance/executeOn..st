execution
executeOn: anObject

	| result |
	result := HomeDataIntegrityRuleResult new 
		object: self;
		addRule: self;
		yourself.
	(self condition value: anObject)
		ifTrue: [
			self automaticResolutionRequested
				ifTrue: [self automaticCleansingBlock value: anObject.
						result objectWasCleansed.]
				ifFalse: [result requiresManualIntervention]]
		ifFalse: [result noActionWasRequired].
		
	 ^ result