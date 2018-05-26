as yet unclassified
relationRefersTo

	^ self new
		receiverCardinality: 1;
		targetCardinality: Float infinity;
		isOrdered: false;
		identifier: 'refersTo' asSymbol;		
		yourself