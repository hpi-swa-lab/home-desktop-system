menus
addYellowButtonMenuItemsTo: aMenu event: evt

	| morphMenu |
	aMenu defaultTarget: self.
	aMenu title: self object externalName.

	self object menuOperations do: [:operation |
		self addMenuOperation: operation to: aMenu].
	
	aMenu addLine.
	
	morphMenu := MenuMorph new defaultTarget: self.
	super addYellowButtonMenuItemsTo: morphMenu event: evt.
	aMenu add: 'morph menu' translated subMenu: morphMenu.
	
	^ aMenu