private
openMenu

	| menu |
	menu := MenuMorph new defaultTarget: instance.
	
	instance menuOperations do: [:operation |
		menu 
			addWithLabel: operation arguments first
			enablementSelector: nil 
			target: instance
			selector: operation method selector
			argumentList: #()].
		
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world	
	