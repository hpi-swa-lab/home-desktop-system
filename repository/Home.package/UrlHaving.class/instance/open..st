as yet unclassified
open: obj
	<rackOperationLabel: 'open url' inContextMenus: true>
	
	Smalltalk platformName = 'Win32' ifTrue: [
		OSProcess command: 'firefox ' , obj url].
	
	Smalltalk platformName = 'Mac OS' ifTrue: [
		OSProcess command: 'open ' , obj url].
	
	Smalltalk platformName = 'unix' ifTrue: [
		OSProcess command: 'xdg-open ' , obj url]