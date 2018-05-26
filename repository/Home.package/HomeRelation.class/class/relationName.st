relations
relationName

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'name' asSymbol;
		defaultInitialization: String;	
		yourself