relations
relationDeleted

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		isOrdered: false;
		identifier: 'deleted' asSymbol;
		defaultInitialization: [false];	
		yourself