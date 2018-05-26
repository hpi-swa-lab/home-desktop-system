relations
relationPriority

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'priority' asSymbol;
		defaultInitialization: String;
		yourself