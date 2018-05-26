relations
relationExplicitName

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'explicitName' asSymbol;
		defaultInitialization: String;	
		yourself