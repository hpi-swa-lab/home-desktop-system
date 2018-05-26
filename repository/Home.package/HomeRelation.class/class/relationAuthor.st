relations
relationAuthor

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'authorOf' asSymbol;		
		yourself