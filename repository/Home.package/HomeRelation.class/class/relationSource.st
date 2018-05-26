relations
relationSource

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'source' asSymbol;
		defaultInitialization: String;
		yourself