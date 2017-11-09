as yet unclassified
relationKey

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		isOrdered: true;
		identifier: 'key' asSymbol;		
		yourself