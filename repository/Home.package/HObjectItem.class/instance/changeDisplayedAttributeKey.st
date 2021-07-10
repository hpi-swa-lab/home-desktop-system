yellowButtonMenuInteractions
changeDisplayedAttributeKey

	<rackOperationLabel: 'Change what is displayed' inContextMenus: true>

	| newKey |
	newKey := UIManager default request: 'Enter new key'.
	(newKey isNil or: [newKey isEmpty]) ifTrue: [^ self].
	
	self displayedKey: newKey asSymbol