relations
relationPublishers

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'publisher' asSymbol;		
		yourself