menu
addMenuOperation: operation for: item to: aMenu
	
	aMenu 
		addWithLabel: operation arguments first
		enablementSelector: nil 
		target: item
		selector: operation method selector
		argumentList: #()