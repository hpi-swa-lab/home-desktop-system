Rack
openOSViewer

	<rackOperationLabel: 'show external file' inContextMenus: true>
	
	(self has: #file) ifTrue: [	
			Smalltalk platformName = 'Win32' ifTrue: [
				OSProcess command: 'explorer ' , (self externalFileName replaceStrings: {'/' -> '\'} )].
			
			Smalltalk platformName = 'Mac OS' ifTrue: [
				OSProcess command: 'open ' , self externalFileName].
			
			Smalltalk platformName = 'unix' ifTrue: [
				OSProcess command: 'xdg-open ' , self externalFileName]]