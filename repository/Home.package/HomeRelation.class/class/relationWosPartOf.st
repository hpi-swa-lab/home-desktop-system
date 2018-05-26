relations
relationWosPartOf

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'wosPartOf' asSymbol;		
		yourself