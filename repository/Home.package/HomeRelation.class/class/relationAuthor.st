relations
relationAuthor

	^ self new
		receiverCardinality: self many;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'authorOf' asSymbol;		
		symmetricPartnerRelation: 'authors' asSymbol;
		yourself