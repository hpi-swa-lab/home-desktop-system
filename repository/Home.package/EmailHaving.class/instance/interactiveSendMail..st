operations
interactiveSendMail: object

	<rackOperationLabel: 'write email' inContextMenus: true>
	
	(self emailAttribute: object) value ifNotNil: [:mail | 
		MailSender sendMessage: (MailMessage new to: mail; yourself)].
	