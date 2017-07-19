menus
addCustomMenuItems: aMenu hand: aHandMorph

	aMenu addLine.
	
	self object menuOperations do: [:operation |
		self addMenuOperation: operation to: aMenu].
	
	aMenu addLine.