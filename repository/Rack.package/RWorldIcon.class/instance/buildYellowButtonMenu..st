menus
buildYellowButtonMenu: aHand 

	| morphMenu aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu title: self object externalName.

	self object menuOperations do: [:operation |
		self addMenuOperation: operation to: aMenu].
	
	aMenu addLine.
	
	morphMenu := MenuMorph new defaultTarget: self.
	super addYellowButtonMenuItemsTo: morphMenu event: ActiveEvent.
	aMenu add: 'morph menu' translated subMenu: morphMenu.
	MenuIcons decorateMenu: aMenu.
	^ aMenu