relations
relationSemanticScholarId

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'semanticScholarId' asSymbol;
		defaultInitialization: String;
		yourself