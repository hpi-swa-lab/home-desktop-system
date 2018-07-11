relations
relationEffortEstimation

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'effortEstimation' asSymbol;	
		defaultInitialization: [0];
		yourself