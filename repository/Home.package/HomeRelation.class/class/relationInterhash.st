relations
relationInterhash

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'interhash' asSymbol;	
		defaultInitialization: String;
		yourself