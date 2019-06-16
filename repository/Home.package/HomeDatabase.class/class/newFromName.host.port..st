as yet unclassified
newFromName: aName host: aHost port: aPort

	| instance |
	instance := self new.
	instance dbName: aName.
	instance adaptor: (HomeDBAdaptor host: aHost port: aPort).
	^ instance