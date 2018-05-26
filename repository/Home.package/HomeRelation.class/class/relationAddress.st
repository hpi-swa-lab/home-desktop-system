relations
relationAddress

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'address' asSymbol;	
		defaultInitialization: String;
		yourself