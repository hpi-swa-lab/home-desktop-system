Rack
openOSViewer

	<rackOperationLabel: 'show external file' inContextMenus: true>
	
	(self has: #file) ifTrue: [	OSProcess command: 'explorer ' , (self externalFileName replaceStrings: {'/' -> '\'} ).]