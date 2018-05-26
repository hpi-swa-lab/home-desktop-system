relations
relationWikiDataUrl

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'wikiDataUrl' asSymbol;
		defaultInitialization: [self defaultUrl];
		yourself