relations
relationDTRPNote

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'dtrpNote' asSymbol;
		defaultInitialization: String;
		yourself