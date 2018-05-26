relations
relationJournal

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'journal' asSymbol;		
		yourself