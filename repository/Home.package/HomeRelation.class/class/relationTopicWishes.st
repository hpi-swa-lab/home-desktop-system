relations
relationTopicWishes

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		isOrdered: false;
		identifier: 'topicWishes' asSymbol;		
		yourself