relations
relationVenue

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'venue' asSymbol;		
		yourself