relations
relationNumpages

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'numpages' asSymbol;
		defaultInitialization: [0];		
		yourself