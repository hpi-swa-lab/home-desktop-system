relations
relationAuthors

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: true;
		identifier: 'authors' asSymbol;
		yourself