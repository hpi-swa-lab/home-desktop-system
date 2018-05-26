relations
relationTeachingTopics

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'teachingTopics' asSymbol;		
		yourself