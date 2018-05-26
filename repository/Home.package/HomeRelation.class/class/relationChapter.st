relations
relationChapter

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'chapter' asSymbol;
		defaultInitialization: String;	
		yourself