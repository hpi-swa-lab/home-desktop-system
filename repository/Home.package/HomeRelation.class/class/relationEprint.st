relations
relationEprint

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'eprint' asSymbol;
		defaultInitialization: String;	
		yourself