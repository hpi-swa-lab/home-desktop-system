relations
relationTimestamp

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'timestamp' asSymbol;
		defaultInitialization: [TimeStamp now];	
		yourself