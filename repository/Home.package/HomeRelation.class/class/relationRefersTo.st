relations
relationRefersTo

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'refersTo' asSymbol;		
		yourself