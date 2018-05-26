relations
relationAddedAt

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'added-at' asSymbol;
		defaultInitialization: TimeStamp now;
		yourself