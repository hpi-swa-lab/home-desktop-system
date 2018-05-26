relations
relationParticipants

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'participants' asSymbol;		
		yourself