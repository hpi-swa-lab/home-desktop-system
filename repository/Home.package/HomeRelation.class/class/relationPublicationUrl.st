relations
relationPublicationUrl

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'publicationUrl' asSymbol;
		defaultInitialization: [self defaultUrl];
		yourself