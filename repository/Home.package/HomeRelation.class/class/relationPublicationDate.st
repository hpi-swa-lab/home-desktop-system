relations
relationPublicationDate

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'publicationDate' asSymbol;
		defaultInitialization: [Date today];
		yourself