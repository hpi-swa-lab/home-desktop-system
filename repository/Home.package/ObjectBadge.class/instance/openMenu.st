private
openMenu

	| menu |
	menu := MenuMorph new defaultTarget: instance.
	
	instance isCollection ifFalse: [
		menu 
			addWithLabel: 'add new field' translated
				enablementSelector: nil 
				target: self
				selector: #addNewFieldRequested
				argumentList: #();
			addWithLabel: 'turnIntoClass'
				enablementSelector: nil 
				target: self
				selector: #turnIntoClassRequested
				argumentList: #().
		menu addLine].
	
	instance addMenuOperationsTo: menu.
		
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world	
	