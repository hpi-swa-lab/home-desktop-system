*Home-SWDEva
interactiveSendMailEva: object

	<rackOperationLabel: 'write email (with HObjectItems)' inContextMenus: true>
	
	(self emailAttribute: object) key ifNotNil: [:mail | | mailClient |
		mailClient := HMDMailComposition new.
		ToolBuilder default open: mailClient.
		mailClient mailRecipientField addDomainObjectBack: object wanting: mail asSymbol].
	