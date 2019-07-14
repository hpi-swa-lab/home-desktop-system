as yet unclassified
newFrom: aCollection withSync: aSyncGateway named: aName
	
	| instance |
	instance := self withSync: aSyncGateway named: aName.
	instance collection do: [:each | self add: each].
	^ instance