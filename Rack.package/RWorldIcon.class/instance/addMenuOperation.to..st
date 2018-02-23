menus
addMenuOperation: operation to: aMenu
	
	aMenu 
		addWithLabel: operation arguments first
		enablementSelector: nil 
		target: self object
		selector: operation method selector
		argumentList: #()