relations
relationLocation

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'location' asSymbol;
		defaultInitialization: String;
		yourself