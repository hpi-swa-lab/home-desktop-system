relations
relationSameAs

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'sameAs' asSymbol;		
		yourself