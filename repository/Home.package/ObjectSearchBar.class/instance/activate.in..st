toolbuilder
activate: event in: morph 
	
	self selection: (1 to: self searchTerm size).
	event hand newKeyboardFocus: morph textMorph.