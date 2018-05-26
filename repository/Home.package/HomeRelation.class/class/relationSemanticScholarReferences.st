relations
relationSemanticScholarReferences

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'semanticScholarReferences' asSymbol;		
		yourself