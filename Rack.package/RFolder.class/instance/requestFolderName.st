interactive operations
requestFolderName

	| folderName |
	folderName := UIManager default request: 'Please enter a folder name' initialAnswer: ''.
	folderName ifEmpty: [UIManager inform: 'Please enter a valid folder name'. Error signal].
	^ folderName
	