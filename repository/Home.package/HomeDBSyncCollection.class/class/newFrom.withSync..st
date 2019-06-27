as yet unclassified
newFrom: aCollection withSync: aSyncGateway
	
	| instance |
	instance := self new.
	instance collection: aCollection.
	instance syncGateway: aSyncGateway.
	instance collection do: [:each | each addDependent: instance syncGateway].
	^ instance