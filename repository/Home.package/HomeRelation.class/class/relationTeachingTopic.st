relations
relationTeachingTopic

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		isOrdered: false;
		identifier: 'teachingTopic' asSymbol;		
		yourself