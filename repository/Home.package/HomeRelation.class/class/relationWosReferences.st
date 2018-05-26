relations
relationWosReferences

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'wosReferences' asSymbol;		
		yourself