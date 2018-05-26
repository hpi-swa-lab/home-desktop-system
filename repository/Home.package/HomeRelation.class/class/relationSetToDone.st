as yet unclassified
relationSetToDone

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		isOrdered: false;
		identifier: 'setToDone' asSymbol;		
		yourself