relations
relationBiburl

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'biburl' asSymbol;
		defaultInitialization: [self defaultUrl];		
		yourself