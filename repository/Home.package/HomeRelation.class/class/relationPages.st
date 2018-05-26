relations
relationPages

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'pages' asSymbol;
		defaultInitialization: [0 to: 0];	
		yourself