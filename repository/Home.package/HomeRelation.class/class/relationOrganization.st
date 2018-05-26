relations
relationOrganization

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'organization' asSymbol;		
		yourself