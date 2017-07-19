as yet unclassified
relationAuthor

	^ self new
		receiverCardinality: 1;
		targetCardinality: Float infinity;
		isOrdered: false;
		identifier: 'authorOf' asSymbol;		
		yourself