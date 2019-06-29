as yet unclassified
withSync: aSyncGateway
	
	| instance |
	instance := self new.
	instance syncGateway: aSyncGateway.
	^ instance