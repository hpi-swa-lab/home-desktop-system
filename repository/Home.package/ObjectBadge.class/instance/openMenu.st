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
	
	instance menuOperations do: [:operation |
		menu 
			addWithLabel: operation arguments first
			enablementSelector: nil 
			target: instance
			selector: operation method selector
			argumentList: #()].
		
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world	
	