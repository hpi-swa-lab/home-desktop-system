relations
relationLiveProgrammingStudyHubReferences

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'liveprogstudyHubReferences' asSymbol;		
		yourself