relations
relationReview

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'review' asSymbol;
		defaultInitialization: Text;
		yourself