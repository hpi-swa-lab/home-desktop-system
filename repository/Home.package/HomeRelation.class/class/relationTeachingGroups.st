relations
relationTeachingGroups

	^ self new
		receiverCardinality: 1;
		targetCardinality: self many;
		identifier: 'teachingGroups' asSymbol;		
		yourself