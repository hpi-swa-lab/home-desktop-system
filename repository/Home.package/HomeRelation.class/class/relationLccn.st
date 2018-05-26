relations
relationLccn

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'lccn' asSymbol;
		defaultInitialization: String;	
		yourself