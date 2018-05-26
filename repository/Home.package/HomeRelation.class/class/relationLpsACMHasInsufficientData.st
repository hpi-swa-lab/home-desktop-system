relations
relationLpsACMHasInsufficientData

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'lpsACMHasInsufficientData' asSymbol;
		defaultInitialization: [false];
		yourself