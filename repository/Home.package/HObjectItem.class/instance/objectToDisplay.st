as yet unclassified
objectToDisplay

	| displayedObject |
	self object ifNil: [^ ''].
	displayedObject := self getWantedObjectAttributeWithDefaultString.
	^ displayedObject isForm
		ifTrue: [displayedObject]
		ifFalse: [displayedObject asString]