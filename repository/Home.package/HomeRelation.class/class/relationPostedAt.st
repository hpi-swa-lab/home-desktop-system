relations
relationPostedAt

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'posted-at' asSymbol;	
		defaultInitialization: [TimeStamp now];
		yourself