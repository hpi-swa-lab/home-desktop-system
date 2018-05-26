relations
relationSetToDone

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'setToDone' asSymbol;
		defaultInitialization: [false];	
		yourself