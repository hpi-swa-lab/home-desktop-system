relations
relationAcmid

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'acmid' asSymbol;		
		defaultInitialization: String;
		yourself