relations
relationEdition

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'edition' asSymbol;
		defaultInitialization: String;		
		yourself