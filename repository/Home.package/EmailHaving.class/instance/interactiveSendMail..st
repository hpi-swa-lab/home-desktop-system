operations
interactiveSendMail: object

	<rackOperationLabel: 'write email dynamic' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to: (self emailAttribute: object) value;
		yourself)