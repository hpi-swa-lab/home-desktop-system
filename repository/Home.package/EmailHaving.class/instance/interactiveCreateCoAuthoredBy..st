*Home-SWDEva
interactiveCreateCoAuthoredBy: object

	<rackOperationLabel: 'copy co-authored-by string to clipboard' inContextMenus: true>
	
	(self emailAttribute: object) value ifNotNil: [:mail | 
		Clipboard clipboardText: 'Co-Authored-By: ', (object answer: #fullName or: ''), ' <', mail asString, '>']
	