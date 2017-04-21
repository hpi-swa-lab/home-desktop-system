as yet unclassified
generalMenu: aMenu

	self getSelectedEntry item menuOperations do: [:operation |
		self addMenuOperation: operation for: self getSelectedEntry item to: aMenu].
	
	aMenu addLine.
	
	self getSelectedEntry menuOperations do: [:operation |
		self addMenuOperation: operation for: self getSelectedEntry to: aMenu.].

	^ aMenu