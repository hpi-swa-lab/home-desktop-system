initialize-release
openMenu

	| menu |
	menu := MenuMorph new defaultTarget: self instance.
	
	self instance menuOperations do: [:operation |
		menu 
			addWithLabel: operation arguments first
			enablementSelector: nil 
			target: self instance
			selector: operation method selector
			argumentList: #()].
		
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world	
	