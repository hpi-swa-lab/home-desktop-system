relations
relationGithubRepositoryName

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'githubRepositoryName' asSymbol;		
		yourself