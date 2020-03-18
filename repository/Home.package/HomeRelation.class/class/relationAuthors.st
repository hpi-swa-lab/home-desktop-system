relations
relationAuthors

	^ self new
		receiverCardinality: self many;
		targetCardinality: self many;
		isOrdered: true;
		identifier: 'authors' asSymbol;
		symmetricPartnerRelation: 'authorOf' asSymbol;
		yourself