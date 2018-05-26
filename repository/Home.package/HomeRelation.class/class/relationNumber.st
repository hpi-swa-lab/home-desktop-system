relations
relationNumber

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'number' asSymbol;
		defaultInitialization: String;		
		yourself