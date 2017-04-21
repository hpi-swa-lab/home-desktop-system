interactive operations
createFolderWithQueryInteractively

	<rackOperationLabel: 'create query folder' inContextMenus: true>

	| folderName aBlock aBlockSource |
	folderName := self requestFolderName.
	aBlockSource := UIManager default request: 'Please enter a block taking one argument filtering the relevant objects from the soup' initialAnswer: '[:item | ... ]'..
	aBlock := Compiler evaluate: aBlockSource.
	self createFolder: folderName withQuery: aBlock