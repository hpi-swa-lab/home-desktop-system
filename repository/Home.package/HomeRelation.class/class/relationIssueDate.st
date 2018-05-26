relations
relationIssueDate

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'issue_date' asSymbol;
		defaultInitialization: Date;		
		yourself