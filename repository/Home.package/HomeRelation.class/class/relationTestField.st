relations
relationTestField
	"This should not be used in normal models but only for testint the
	domain object infrastructure."

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'testField' asSymbol;	
		defaultInitialization: [0];
		yourself