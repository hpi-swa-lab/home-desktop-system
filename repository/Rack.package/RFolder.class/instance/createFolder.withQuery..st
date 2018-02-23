modifying
createFolder: folderName withQuery: aBlock

	^ self 
		add: (RSoupQueryFolder new query: aBlock; yourself) 
		named: folderName