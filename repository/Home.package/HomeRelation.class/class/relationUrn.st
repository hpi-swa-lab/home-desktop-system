relations
relationUrn

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'urn' asSymbol;
		defaultInitialization: String;
		yourself