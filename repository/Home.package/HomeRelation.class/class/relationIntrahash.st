relations
relationIntrahash

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'intrahash' asSymbol;	
		defaultInitialization: String;	
		yourself