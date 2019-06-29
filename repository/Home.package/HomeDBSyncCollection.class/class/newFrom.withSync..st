as yet unclassified
newFrom: aCollection withSync: aSyncGateway
	
	| instance |
	instance := self new.
	instance syncGateway: aSyncGateway.
	instance collection do: [:each | self add: each].
	^ instance