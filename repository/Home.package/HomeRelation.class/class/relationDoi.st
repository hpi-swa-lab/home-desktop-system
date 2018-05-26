relations
relationDoi

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'doi' asSymbol;
		defaultInitialization: String;
		yourself