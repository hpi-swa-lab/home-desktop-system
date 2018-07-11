Rack
interactiveSendMail

	<rackOperationLabel: 'write email' inContextMenus: true>

	| addresses |
	
	addresses := self 
		answer: #emailAddress 
		or: [((((self ? #participants) collect: [:p | p ? #email]) reject: #isNil) joinSeparatedBy: ',')].
	
	MailSender sendMessage: (MailMessage new
		to: addresses;
		yourself)