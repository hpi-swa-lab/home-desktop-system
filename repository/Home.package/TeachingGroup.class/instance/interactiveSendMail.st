accessing
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>
	
	MailSender sendMessage: (MailMessage new
		to: (((self members collect: [:p | p ? #email]) reject: #isNil) asArray joinSeparatedBy: ',');
		yourself)