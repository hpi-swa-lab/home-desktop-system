relations
relationArcticleNo

	^ self new
		receiverCardinality: 1;
		targetCardinality: 1;
		identifier: 'articleno' asSymbol;
		defaultInitialization: String;
		yourself