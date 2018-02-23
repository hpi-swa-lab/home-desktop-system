modifying
createFolder: folderName withQuery: aBlock

	self addEntryNamed: folderName with: (RSoupQueryFolder new query: aBlock; yourself)