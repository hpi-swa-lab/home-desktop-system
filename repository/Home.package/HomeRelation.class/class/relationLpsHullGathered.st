relations
relationLpsHullGathered

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'lpsHullGathered' asSymbol;
		defaultInitialization: [false];
		yourself