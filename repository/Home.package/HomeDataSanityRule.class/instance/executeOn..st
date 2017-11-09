accessing
executeOn: anObject

	| result |
	result := HomeDataIntegrityRuleResult new 
		object: self;
		addRule: self;
		yourself.
	
	(self constraint value: anObject)
		ifTrue: [result noActionWasRequired]
		ifFalse: [result requiresManualIntervention].
		
	^ result