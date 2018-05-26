relations
relationFreeCiteReferences

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'freeCiteReferences' asSymbol;	
		yourself