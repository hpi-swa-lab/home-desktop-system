relations
relationTags

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'tags' asSymbol;		
		yourself