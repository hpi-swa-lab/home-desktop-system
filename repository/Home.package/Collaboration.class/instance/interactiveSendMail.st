Rack
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>

	| addresses |
	
	addresses := self emailAddresses.
	
	MailSender sendMessage: (MailMessage new
		to: addresses;
		yourself)