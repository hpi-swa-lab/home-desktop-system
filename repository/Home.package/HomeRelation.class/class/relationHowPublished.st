relations
relationHowPublished

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'howpublished' asSymbol;
		defaultInitialization: String;	
		yourself