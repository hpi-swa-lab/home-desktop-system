modifying
createFolderInteractively
	
	<rackOperationLabel: 'create folder' inContextMenus: true>
	
	| folderName |
	folderName := self requestFolderName.
	self createFolder: folderName.