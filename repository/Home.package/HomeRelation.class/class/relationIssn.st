relations
relationIssn

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'issn' asSymbol;
		defaultInitialization: String;	
		yourself