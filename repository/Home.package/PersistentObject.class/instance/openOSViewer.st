as yet unclassified
openOSViewer

	<rackOperationLabel: 'show external file' inContextMenus: true>
	
	(self has: #file) ifTrue: [ | fileName |	
			fileName := self file.
			(fileName includesSubstring: ':PDF')
				ifTrue: [fileName := 'C:\Users\patri\Desktop\literature\phd\' , (fileName copyWithoutFirst copyUpTo: $:)].
			OSProcess command: 'explorer ' , (fileName replaceStrings: {'/' -> '\'} ).]