as yet unclassified
searchDomainObjects

	| chosenObject objects |
	objects := Person allInstances.
	chosenObject := UIManager default chooseFrom: objects values: objects.
	chosenObject ifNil: [^ self].
	
	self potentiallyDisplay: chosenObject