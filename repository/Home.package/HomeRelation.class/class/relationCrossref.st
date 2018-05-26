relations
relationCrossref

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'crossref' asSymbol;
		defaultInitialization: String;	
		yourself