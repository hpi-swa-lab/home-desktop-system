relations
relationInstitution

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'institution' asSymbol;
		yourself