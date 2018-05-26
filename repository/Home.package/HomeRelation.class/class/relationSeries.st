relations
relationSeries

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'series' asSymbol;		
		yourself