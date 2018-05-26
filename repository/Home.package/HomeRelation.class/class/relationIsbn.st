relations
relationIsbn

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'isbn' asSymbol;
		defaultInitialization: String;	
		yourself