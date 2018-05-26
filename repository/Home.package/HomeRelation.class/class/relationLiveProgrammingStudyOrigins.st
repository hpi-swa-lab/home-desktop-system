relations
relationLiveProgrammingStudyOrigins

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'liveprogstudyOrigins' asSymbol;		
		yourself