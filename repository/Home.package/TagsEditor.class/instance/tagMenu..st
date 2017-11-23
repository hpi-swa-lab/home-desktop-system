user interface
tagMenu: aMenu

	aMenu 
		addWithLabel: 'remove tag (x)'
		enablementSelector: nil 
		target: self
		selector: #removeSelectedTag
		argumentList: #().
		
	^ aMenu