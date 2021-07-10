yellowButtonMenuInteractions
searchDomainObjects

	<rackOperationLabel: 'Search for a domain object' inContextMenus: true>

	| chosenObject |
	chosenObject := self chooseObject.
	chosenObject ifNil: [^ self].
	
	self display: chosenObject