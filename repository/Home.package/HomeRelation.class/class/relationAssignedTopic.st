relations
relationAssignedTopic

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		isOrdered: false;
		identifier: 'assignedTopic' asSymbol;		
		yourself