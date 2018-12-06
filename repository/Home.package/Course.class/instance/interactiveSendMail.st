as yet unclassified
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to: (self answer: #emailAddress or: '');
		yourself)