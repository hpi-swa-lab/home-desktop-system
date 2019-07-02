as yet unclassified
withSync: aSyncGateway named: aName
	
	| instance |
	instance := self new.
	instance identifier: aName.
	instance syncGateway: aSyncGateway.
	^ instance