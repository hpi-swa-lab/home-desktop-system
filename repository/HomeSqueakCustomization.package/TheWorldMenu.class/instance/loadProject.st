commands
loadProject

	| fName |
	"Put up a Menu and let the user choose a '.project' file to load.  Create a thumbnail and jump into the project."

	Project canWeLoadAProjectNow ifFalse: [^ self].
	fName := UIManager default chooseFileMatchingSuffixes: #('pr' 'project').
	fName ifNil:[^nil].

	FileDirectory splitName: fName to:[:dir :file|
			ProjectLoading 
				openFromDirectory: dir
				andFileName: file]
