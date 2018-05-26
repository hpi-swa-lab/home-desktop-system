relations
relationGithubUserName

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'githubUserName' asSymbol;
		defaultInitialization: String;
		yourself