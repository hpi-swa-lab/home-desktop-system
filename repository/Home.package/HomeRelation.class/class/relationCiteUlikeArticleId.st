relations
relationCiteUlikeArticleId

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'citeulike-article-id' asSymbol;	
		defaultInitialization: String;
		yourself