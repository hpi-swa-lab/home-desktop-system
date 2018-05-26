relations
relationUrlDate

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'urldate' asSymbol;
		defaultInitialization: [TimeStamp now];	
		yourself