Rack-UI
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to: self email;
		yourself)