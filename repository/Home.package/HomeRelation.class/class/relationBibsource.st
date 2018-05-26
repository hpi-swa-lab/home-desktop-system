relations
relationBibsource

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'bibsource' asSymbol;
		defaultInitialization: String;		
		yourself