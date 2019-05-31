as yet unclassified
newFromName: aName adaptor: aAdaptor

	| instance |
	instance := self new.
	instance dbName: aName.
	instance adaptor: aAdaptor.
	^ instance