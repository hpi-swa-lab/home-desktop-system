modifying
remove: entryName
	self changed.
	^ boxes removeAllSuchThat: [:box | box label = entryName]