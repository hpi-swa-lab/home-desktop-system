operations
interactiveShowExternalFile: object
	<rackOperationLabel: 'show external file' inContextMenus: true>
	|path|
	path := (self fileAttribute: object) value.
	
	Smalltalk platformName = 'Win32' ifTrue: [
		OSProcess command: 'explorer ' , (path replaceStrings: {'/' -> '\'} )].
	
	Smalltalk platformName = 'Mac OS' ifTrue: [
		OSProcess command: 'open ' , path].
	
	Smalltalk platformName = 'unix' ifTrue: [
		OSProcess command: 'xdg-open ' , path]