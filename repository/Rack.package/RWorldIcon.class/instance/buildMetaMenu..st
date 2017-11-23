menus
buildMetaMenu: evt

	| menu morphMenu |
	menu := MenuMorph new defaultTarget: self.
	menu addStayUpItem.

	self object menuOperations do: [:operation |
		self addMenuOperation: operation to: menu].
	
	menu addLine.
	
	morphMenu := super buildMetaMenu: evt.
	menu add: 'morph menu' translated subMenu: morphMenu.
	
	^ menu