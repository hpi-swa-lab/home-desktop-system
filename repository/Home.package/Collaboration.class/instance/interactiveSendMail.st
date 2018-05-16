Rack
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to: ((((self ? #participants) collect: [:p | p ? #email]) reject: #isNil) joinSeparatedBy: ',');
		yourself)