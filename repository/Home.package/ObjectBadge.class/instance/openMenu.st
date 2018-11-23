private
openMenu

	| menu |
	menu := MenuMorph new defaultTarget: instance.
	
	menu 
		addWithLabel: 'add new field'
		enablementSelector: nil 
		target: self
		selector: #addNewFieldRequested
		argumentList: #().
		
	menu addLine.
	
	instance addMenuOperationsTo: menu.
		
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world	
	