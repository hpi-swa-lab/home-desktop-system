*Home-SWDEva
interactiveSendMailEva: object

	<rackOperationLabel: 'write email (with items)' inContextMenus: true>
	self flag: #todo. "ask Patrick to either make this standard send mail (in this case refactor plz) or remove probably"
	
	(self emailAttribute: object) key ifNotNil: [:mail | | mailClient |
		mailClient := HMDMailComposition new.
		ToolBuilder default open: mailClient.
		mailClient mailRecipientField addDomainObjectBack: object wanting: mail asSymbol].
	