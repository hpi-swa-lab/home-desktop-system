relations
relationReferencekey

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'referencekey' asSymbol;	
		defaultInitialization: String;
		yourself