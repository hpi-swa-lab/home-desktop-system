modifying
addEntryNamed: entryName with: item
	
	self at: entryName put: (RBox in: self named: entryName containing: item)