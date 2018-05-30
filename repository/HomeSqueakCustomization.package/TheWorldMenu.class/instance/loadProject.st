commands
loadProject

	| stdFileMenuResult path |
	"Put up a Menu and let the user choose a '.project' file to load.  Create a thumbnail and jump into the project."

	Project canWeLoadAProjectNow ifFalse: [^ self].
	path := FileList2 modalFolderSelector.
	path ifNil: [^ nil].
	stdFileMenuResult := ((StandardFileMenu new) pattern: '*.pr'; 
		oldFileFrom: path) 
			startUpWithCaption: 'Select a File:' translated.
	stdFileMenuResult ifNil: [^ nil].
	ProjectLoading 
		openFromDirectory: stdFileMenuResult directory 
		andFileName: stdFileMenuResult name
