relations
relationNote

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'note' asSymbol;
		defaultInitialization: String;
		yourself