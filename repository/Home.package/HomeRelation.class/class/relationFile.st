relations
relationFile

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'file' asSymbol;
		defaultInitialization: String;
		yourself