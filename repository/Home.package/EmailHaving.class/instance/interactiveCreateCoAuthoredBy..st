operations
interactiveCreateCoAuthoredBy: object

	<rackOperationLabel: 'copy co-authored string to clipboard' inContextMenus: true>
	
	(self emailAttribute: object) value ifNotNil: [:mail | 
		Clipboard clipboardText: 'Co-Authored-By: ', object fullName, ' <', mail asString, '>']
	